package news.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import news.main.model.Category;
import news.main.model.News;
import news.main.service.CategoryService;
import news.main.service.NewsService;

@Controller
@RequestMapping("/News")
public class NewsController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private NewsService newsServices;
	
	
	
	@GetMapping("/NewsPage")
	public String getAddNewsPage(Model model)
	{
		model.addAttribute("categories", categoryService.getAllCategories());
		return "NewsAddPage";
	}
	
	@PostMapping("/postNews")
	public String saveNews(@ModelAttribute("news") News news,Model model,RedirectAttributes redirectAttributes,@RequestParam("categoryId") Long categoryId)
	{
		 Category category = categoryService.getCategoryById(categoryId);
		
		if(news.getTitle() == null || news.getTitle().trim().isEmpty())
		{
			 model.addAttribute("error", "Title cannot be null or empty");
		}
		 news.setCategory(category);
		 newsServices.saveNews(news);
		 return "redirect:/News/ListOfNews";
	}
	
	@GetMapping("/ListOfNews")
	public String showList(Model model)
	{
		model.addAttribute("news", newsServices.getAllNews());
		return "NewsList";
	}
	
	@GetMapping("/edit/{id}")
	public String shoEditForm(@PathVariable("id") Long id,Model model)
	{
		   News news= newsServices.getNewsById(id);
		   model.addAttribute("news", news);
		   model.addAttribute("categories",categoryService.getAllCategories());
		   return "editNewsPage";
	}
	
	@PostMapping("/update/{id}")
	public String updateNews(@PathVariable("id") Long id, @ModelAttribute("news") News news,@RequestParam("categoryID") Long categegoryID,RedirectAttributes redirectAttributes )
	{
		 News exitingNews= newsServices.getNewsById(id);
		 Category category = categoryService.getCategoryById(categegoryID);
		 if(exitingNews != null)
		 {
			 exitingNews.setTitle(news.getTitle());
			 exitingNews.setContent(news.getContent());
			 exitingNews.setCategory(category);
			 newsServices.saveNews(exitingNews);
		 }
		 return "redirect:/News/ListOfNews";
	}
	@GetMapping("/delete/{id}")
	public String deleteNews(@PathVariable("id") Long id,RedirectAttributes redirectAttributes )
	{
		newsServices.deleteNews(id);
		return "redirect:/News/ListOfNews";
	}
	
	
	@GetMapping("/showNewsByCategory/{categoryId}")
	public String getCategoryById(@PathVariable("categoryId") Long categoryId, Model model,
			RedirectAttributes redirectAttributes) {
		List<News> newsList = newsServices.getNewsByCategory(categoryId);
		redirectAttributes.addFlashAttribute("newsList", newsList);
		return "redirect:/";
	}
	 
	@GetMapping("/newsContent/{newsId}")
	public String getContent(@PathVariable("newsId") Long newsId,RedirectAttributes redirectAttributes)
	{
		 News news = newsServices.getNewsById(newsId);
		 redirectAttributes.addFlashAttribute("news", news);
		 return "redirect:/";
	}
}
