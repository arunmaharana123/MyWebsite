package org.arun.spring.dao;

import java.util.List;

import org.arun.spring.model.Contact;
import org.arun.spring.model.Post;
import org.arun.spring.model.Profile;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public SessionFactory getFactory() {
		return this.sessionFactory;
	}

	@SuppressWarnings("unchecked")
	public List<Post> findPost(int firstIndex, int total) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(Post.class);
			criteria.add(Restrictions.eq("status", 1));
			criteria.addOrder(Order.desc("id"));
			if (total != 0) {
				criteria.setMaxResults(total);
			}
			List<Post> articles = criteria.list();
			return articles;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Post findPostById(Integer id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(Post.class);
			criteria.add(Restrictions.eq("id", id));
			List<Post> posts = criteria.list();
			if (posts.size() > 0) {
				return posts.get(0);
			} else {
				return null;
			}

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean addPost(Post post) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.persist(post);
		} catch (Exception e) {
			e.printStackTrace();
			session.clear();
		}
		return true;
	}

	public boolean updatePost(Post post) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.update(post);
		} catch (Exception e) {
			e.printStackTrace();
			session.clear();
		}
		return true;
	}

	@SuppressWarnings("unchecked")
	public Profile findProfileById(int id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(Profile.class);
			criteria.add(Restrictions.eq("id", id));
			List<Profile> posts = criteria.list();
			if (posts.size() > 0) {
				return posts.get(0);
			} else {
				return null;
			}

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<Post> findPostByTag(String title) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Criteria criteria = session.createCriteria(Post.class);
			criteria.add(Restrictions.like("tags", title, MatchMode.ANYWHERE));
			List<Post> posts = criteria.list();
			if (posts.size() > 0) {
				return posts;
			} else {
				return null;
			}

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean addContactMe(Contact contact) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.persist(contact);
		} catch (Exception e) {
			e.printStackTrace();
			session.clear();
		}
		return true;
	}

}
