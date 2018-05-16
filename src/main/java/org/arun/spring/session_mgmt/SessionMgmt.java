package org.arun.spring.session_mgmt;

public class SessionMgmt {/*

	public static void createSession(HttpServletRequest request, User user) {

		request.getSession().setAttribute("USER_SESSION", user);
		request.getSession().setAttribute("USER_SESSION_USERID", user.getId());
		request.getSession().setAttribute("USER_SESSION_NAME", user.getName());
		request.getSession().setAttribute("USER_SESSION_USERNAME", user.getUsername());
		request.getSession().setAttribute("USER_SESSION_EMAIL", user.getEmail());
		request.getSession().setAttribute("USER_SESSION_DESIGNATION", user.getDesignation());
		request.getSession().setAttribute("USER_SESSION_COMPANY", user.getCompany());
		request.getSession().setAttribute("USER_SESSION_USERROLE", user.getRole());

		request.getSession().setAttribute("USER_ROLE_ADMIN", MyConstatnts.USER_ROLE_ADMIN);
		request.getSession().setAttribute("USER_ROLE_EDITOR", MyConstatnts.USER_ROLE_EDITOR);
		request.getSession().setAttribute("USER_ROLE_CUSTOMER", MyConstatnts.USER_ROLE_CUSTOMER);

	}

	public static void expireSession(HttpServletRequest request) {
		request.getSession().invalidate();
		request.getSession().invalidate();
	}

	public static User getCurrentUser(HttpServletRequest request) {
		User user = null;
		try {
			user = (User) request.getSession().getAttribute("USER_SESSION");
		} catch (Exception e) {
		}
		if (user == null) {
			user = createDommyUser();
		}
		return user;
	}

	private static User createDommyUser() {
		User user = new User();
		user.setId(1);
		user.setCompany("URM Technology");
		user.setDatetime(new Date());
		user.setDesignation("Software Engineer");
		user.setEmail("arunmaharana@hotmail.com");
		user.setGender("Male");
		user.setImage("");
		user.setLastLogin("");
		user.setMetatag(null);
		user.setMobile("");
		user.setName("Guest");
		user.setPassword("guest");
		user.setStatus(1);
		user.setUsername("guest");
		user.setRole(4);
		return user;
	}

*/}
