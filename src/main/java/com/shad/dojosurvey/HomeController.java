package com.shad.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String main() {
		// render the home page
		return "index.jsp";
	}
	
	@RequestMapping(value="/submitForm", method=RequestMethod.POST)
	public String submit(@RequestParam(value="name") String name,
			@RequestParam(value="location") String location,
			@RequestParam(value="language") String language,
			@RequestParam(value="comments") String comments, HttpSession session) {
		
		// get the data from the session
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		// check to see if there are any comments; if not, add "No comments"
		if (comments == null || comments.length() == 0) {
			String noComments = "No comments";
			session.setAttribute("comments", noComments);
		} else {
			session.setAttribute("comments", comments);
		}
		
		return "redirect:/results";
	}
	
	@RequestMapping("/results")
	public String results(HttpSession session, Model model) {
		
		// get the variables from session
		String name = (String) session.getAttribute( "name");
		String location = (String) session.getAttribute("location");
		String language = (String) session.getAttribute("language");
		String comments = (String) session.getAttribute("comments");
		
		// pass the data to the JSP
		model.addAttribute("name", name);
		model.addAttribute("location", location);
		model.addAttribute("language", language);
		model.addAttribute("comments", comments);
		
		return "results.jsp";
	}
	
	
	

}
