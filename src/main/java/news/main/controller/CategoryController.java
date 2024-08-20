package news.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import news.main.model.Category;
import news.main.service.CategoryService;

@Controller
@RequestMapping("/categories")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@PostMapping("/saveCategroy")
	public String CategoryPage(@ModelAttribute Category category,RedirectAttributes redirectAttributes)
	{
		try
		{
			
			if(category.getName().trim() != "")
			{
				categoryService.saveCategory(category);
				redirectAttributes.addFlashAttribute("message","Category added successfully!");
				redirectAttributes.addFlashAttribute("alertClass", "alert-success");
			}
			else
			{
				redirectAttributes.addFlashAttribute("message", "Category not added.");
				redirectAttributes.addFlashAttribute("alertClass", "alert-danger");
			}
			
			
		}
		catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Category not added.");
			redirectAttributes.addFlashAttribute("alertClass", "alert-danger");
		}
		
		return "redirect:/categories";
	}
	
	@GetMapping
	public String listCategories(Model model)
	{
		model.addAttribute("categories", categoryService.getAllCategories());
		return "categoriesList";
	}
	
	@GetMapping("delete/{id}")
	public String deleteCategory(@PathVariable("id") Long id,RedirectAttributes redirectAttributes)
	{
		categoryService.deleteCategory(id);
		 redirectAttributes.addFlashAttribute("message", "category deleted successfuly!");
		 redirectAttributes.addFlashAttribute("alertClass", "alert-success");
		return "redirect:/categories";
	}
	
	@GetMapping("/edit/{id}")
	public String showEditform(@PathVariable("id") Long id, Model model)
	{
		Category category = categoryService.getCategoryById(id);
		model.addAttribute("category",category);
		return "categoryEditPage";
	}
	
	@PostMapping("/update/{id}")
	public String updateCategory(@PathVariable("id") Long id,@ModelAttribute("category") Category category)
	{
		 Category exitingcategory = categoryService.getCategoryById(id);
		 
		 if(exitingcategory != null)
		 {
			 exitingcategory.setName(category.getName());
			 categoryService.saveCategory(exitingcategory);
			
		 }
		 return "redirect:/categories";
	}
	
}
