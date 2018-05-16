package org.arun.spring.controller;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.arun.spring.model.Post;
import org.arun.spring.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PostController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/post/{postid}/{title}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String showPost(Model model, final HttpServletRequest request, @PathVariable String postid,
			@PathVariable String title) {

		try {
			Integer id = new Integer(postid);
			Post listArticles = service.findPostById(id);
			model.addAttribute("Post", listArticles);
		} catch (NumberFormatException e) {
			Post listArticles = service.findPostById(0);
			model.addAttribute("Post", listArticles);
		}
		List<Post> listArticles = service.findPost(0, 10);
		model.addAttribute("Topics", listArticles);

		return "singlepost";
	}

	@RequestMapping(value = "/post/tag/{title}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String showPostByTag(Model model, final HttpServletRequest request, @PathVariable String title) {

		model.addAttribute("Tags", title);
		try {
			List<Post> listArticles = service.findPostByTag(title);
			model.addAttribute("Topics", listArticles);
		} catch (NumberFormatException e) {
			return "redirect:/home";
		}
		return "postsoftag";
	}

	@RequestMapping(value = "/post/tag", method = RequestMethod.GET, headers = "Accept=application/json")
	public String showPostTag(Model model, final HttpServletRequest request) {

		try {
			List<Post> listArticles = service.findPost(0, 0);
			StringBuffer buffer = new StringBuffer();
			for (Post post : listArticles) {
				buffer.append(post.getTags() + ",");
			}
			String[] allTags = buffer.toString().split(",");
			Set<String> set = new HashSet<>();

			for (String string : allTags) {
				if (StringUtils.isNotBlank(string)) {
					set.add(string.trim());
				}
			}
			model.addAttribute("AllTags", set);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			return "redirect:/home";
		}

		List<Post> listArticles = service.findPost(0, 10);
		model.addAttribute("Topics", listArticles);

		return "posttag";
	}

	@RequestMapping(value = "/post/add/{apikey}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String addPost(Model model, final HttpServletRequest request, @PathVariable String apikey) {

		System.out.println(request.getParameter("id"));
		if ("arun1234".equalsIgnoreCase(apikey)) {
			return "addpost";
		} else {

		}
		List<Post> listArticles = service.findPost(0, 10);
		model.addAttribute("Topics", listArticles);

		return "home";
	}

	@RequestMapping(value = "/post/edit/{postid}/{apikey}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String editPost(Model model, final HttpServletRequest request, @PathVariable String postid,
			@PathVariable String apikey) {

		if ("arun1234".equalsIgnoreCase(apikey)) {
			try {
				Integer id = new Integer(postid);
				Post post = service.findPostById(id);
				model.addAttribute("PostInfo", post);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			return "addpost";
		}
		List<Post> listArticles = service.findPost(0, 10);
		model.addAttribute("Topics", listArticles);

		return "home";
	}

	@RequestMapping(value = "/post/save", method = RequestMethod.POST, headers = "Accept=application/json")
	public String savePost(Model model, final HttpServletRequest request) {

		try {
			String title = request.getParameter("title");
			String shortdescription = request.getParameter("shortdescription");
			String description = request.getParameter("description");
			String postedby = request.getParameter("postedby");
			String creditto = request.getParameter("creditto");
			String tags = request.getParameter("tags");

			String updateid = request.getParameter("updateid");
			if (StringUtils.isNotBlank(updateid)) {
				String apikey = request.getParameter("apikey");
				if ("Arunkumar".equalsIgnoreCase(apikey)) {
					Integer id = new Integer(updateid);
					Post post = service.findPostById(id);
					// post.setAttachment(null);
					// post.setAttachment_type(null);
					post.setCreatedBy(postedby);
					post.setCreditTo(creditto);
					// post.setDatetime(new Date());
					post.setDescription(description);
					post.setShortDescription(shortdescription);
					post.setTags(tags);
					post.setTitle(title);
					// post.setTotalView(1);
					// String urlLink = title.replaceAll(" ", "-");
					// post.setUrlTitle(urlLink);
					post.setUserId(1);
					post.setStatus(1);
					service.updatePost(post);
				}
			} else {
				Post post = new Post();
				post.setAttachment(null);
				post.setAttachment_type(null);
				post.setCreatedBy(postedby);
				post.setCreditTo(creditto);
				post.setDatetime(new Date());
				post.setDescription(description);
				post.setShortDescription(shortdescription);
				post.setTags(tags);
				post.setTitle(title);
				post.setTotalView(1);
				String urlLink = title.replaceAll(" ", "-");
				post.setUrlTitle(urlLink);
				post.setUserId(1);
				String apikey = request.getParameter("apikey");
				if ("Arunkumar".equalsIgnoreCase(apikey)) {
					post.setStatus(1);
					service.addPost(post);
				} else {
					post.setStatus(0);
					service.addPost(post);
				}
			}

			List<Post> listArticles = service.findPost(0, 10);
			model.addAttribute("Topics", listArticles);
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/home";
		}

		return "home";
	}

}
