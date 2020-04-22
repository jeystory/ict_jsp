package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Bye {
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 일처리가 끝나면 jsp로 보낼 정보를 request나 session에 저장
		String title = "Bye";
		String name = "ICT";
		int age = 20;

		// request 저장
		request.setAttribute("title", title);
		request.setAttribute("name", name);
		request.setAttribute("age", age);

		// session에 저장
		request.getSession().setAttribute("title", title);
		request.getSession().setAttribute("name", "대한민국");
		request.getSession().setAttribute("age", "127");

		// 반환형은 결과를 표시할 페이지를 알려줌
		return "view/result.jsp";
	}
}
