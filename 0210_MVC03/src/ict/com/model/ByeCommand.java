package ict.com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ByeCommand  implements Command  {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// request 저장
		request.setAttribute("title", "bye");
		request.setAttribute("name", "ICT");
		request.setAttribute("age", "20");

		// session에 저장
		request.getSession().setAttribute("name", "대한민국");
		request.getSession().setAttribute("age", "127");

		// 반환형은 결과를 표시할 페이지를 알려줌
		return "view/result.jsp";
	}
}
