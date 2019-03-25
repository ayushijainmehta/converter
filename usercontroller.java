package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller

public class usercontroller {
	 @Autowired
	    LoginService service;
	/* @RequestMapping(value="/login")
	   public String login() {
	    
	       return "login";
	   }*/
	 @RequestMapping(value="/")
	   public String home(Model model) {
	       model.addAttribute("msg",
	                          "a jar packaging example");
	       return "home";
	   }
	 
	@RequestMapping(value="/process", method = RequestMethod.POST)
	    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){

	        boolean isValidUser = service.validateUser(name, password);

	        if (!isValidUser) {
	            model.put("errorMessage", "Invalid Credentials");
	           return "home";
	        }

	        model.put("name", name.toUpperCase());;
	        model.put("password", password);

	        return "dash";
	    }
	 @RequestMapping(value="/logout", method = RequestMethod.GET)
	 public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	     Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	     if (auth != null){    
	         new SecurityContextLogoutHandler().logout(request, response, auth);
	     }
	     return "home";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	 }
}
