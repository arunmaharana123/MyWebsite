package org.arun.spring.service;

import java.util.List;

import org.arun.spring.dao.DAO;
import org.arun.spring.model.Contact;
import org.arun.spring.model.Post;
import org.arun.spring.model.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("service")
public class MyService {

	@Autowired
	DAO dao;

	// Internal User History

	@Transactional
	public boolean addPost(Post post) {
		return dao.addPost(post);

	}

	@Transactional
	public boolean updatePost(Post post) {
		return dao.updatePost(post);
	}

	@Transactional
	public List<Post> findPost(int firstIndex, int total) {
		return dao.findPost(firstIndex, total);
	}

	@Transactional
	public Post findPostById(Integer id) {
		return dao.findPostById(id);
	}

	@Transactional
	public List<Post> findPostByTag(String title) {
		return dao.findPostByTag(title);
	}

	@Transactional
	public Profile findProfileById(Integer id) {
		return dao.findProfileById(id);
	}

	@Transactional
	public boolean addContactMe(Contact contact) {
		return dao.addContactMe(contact);

	}

}
