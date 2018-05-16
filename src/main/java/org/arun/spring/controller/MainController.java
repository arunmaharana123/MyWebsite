package org.arun.spring.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.arun.spring.model.Contact;
import org.arun.spring.model.Post;
import org.arun.spring.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/home", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model, final HttpServletRequest request) {

		System.out.println(request.getParameter("id"));

		List<Post> listArticles = service.findPost(0, 100);
		model.addAttribute("Topics", listArticles);

		return "home";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAbout(Model model, final HttpServletRequest request) {
		return "about";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getContact(Model model, final HttpServletRequest request) {
		return "contact";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getProfile(Model model, final HttpServletRequest request) {
		return "profile";
	}

	@RequestMapping(value = "/contact/send", method = RequestMethod.POST, headers = "Accept=application/json")
	public String getContactMe(Model model, final HttpServletRequest request) {

		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String website = request.getParameter("website");
			String location = request.getParameter("location");
			String subject = request.getParameter("subject");
			String message = request.getParameter("message");
			if (StringUtils.isNotBlank(name) || StringUtils.isNotBlank(email) || StringUtils.isNotBlank(message)) {
				Contact contact = new Contact();
				contact.setDatetime(new Date());
				contact.setEmail(email);
				contact.setLocation(location);
				contact.setMessage(message);
				contact.setName(name);
				contact.setStatus(1);
				contact.setSubject(subject);
				contact.setWebsite(website);
				service.addContactMe(contact);
			} else {
				model.addAttribute("ErrorMessage", "ErrorMessage");
				model.addAttribute("Message", "ERROR!!! * fields are mandatory.");
				return "contact";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("ErrorMessage", "ErrorMessage");
			model.addAttribute("Message", "ERROR!!! Please try after sometime.");
			return "contact";
		}
		model.addAttribute("SuccessMessage", "SuccessMessage");
		model.addAttribute("Message", "Successfully Submitted..");
		return "contact";
	}

}
