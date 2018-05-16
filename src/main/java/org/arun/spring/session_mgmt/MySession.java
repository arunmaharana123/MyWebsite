package org.arun.spring.session_mgmt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class MySession {
	private HttpSession session = null;

	public MySession getSession() {
		MySession mySession = (MySession) session.getAttribute("MySession");
		return mySession;

	}

	public void setSession(HttpServletRequest request) {
		session = request.getSession();

		MySession mySession = new MySession();
		session.setAttribute("MySession", mySession);

	}
}
