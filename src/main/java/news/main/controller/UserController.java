package news.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import news.main.model.User;
import news.main.repositry.UserRepo;
import news.main.service.CategoryService;
import news.main.service.NewsService;


@Controller
public class UserController {
	
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private NewsService newsServices;
	
	@GetMapping("/")
	public String home(Model model)
	{
		model.addAttribute("categories",categoryService.getAllCategories());
		
		if(!model.containsAttribute("newsList") && !model.containsAttribute("news") ) {
			model.addAttribute("newsList",newsServices.getAllNews());
		}
		
		
		return "index";
	}
	
	@GetMapping("/loginPage")
	public String login()
	{
		return "login";
	}
	
	@GetMapping("/register")
	public String register()
	{
		return "register";
	}
	
	@PostMapping("UserRegisteration")
	public String regiUser(@ModelAttribute User user,Model model,RedirectAttributes redirectAttributes)
	{
		try
		{
			userRepo.save(user);
			model.addAttribute("message", "User registered successfully!");
		}
		catch (Exception e) {
				model.addAttribute("message", "User registration failed. Please try again.");
		}
	
		
		return "redirect:/loginPage";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String email,@RequestParam String password,RedirectAttributes redirectAttributes)
	{
		System.out.println(email);
		System.out.println(password);
		User user = userRepo.findByEmail(email);
		if(user != null && user.getEmail().equalsIgnoreCase(email) && user.getPassword().equals(password))
		{
			return "redirect:/categories"; 
		}else
		{
			return "redirect:/loginPage";
		}
	
	}
	
	/*
	 * @GetMapping("/dashboardPage") public String dashboradPage() { return
	 * "AdminDashboard"; }
	 */
}
