package org.arun.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.arun.spring.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfileController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/profile/{profileid}/{profilename}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String showProfile(Model model, final HttpServletRequest request, @PathVariable String profileid,
			@PathVariable String profilename) {

		/*try {
			Integer id = new Integer(profileid);
			Profile profile = service.findProfileById(id);
			if (profile != null) {
				model.addAttribute("ProfileInfo", profile);
				return "profile";
			} else {
				return "redirect:/home";
			}

		} catch (NumberFormatException e) {
			return "redirect:/home";
		}*/
		
		return "redirect:/home";
	}

}
