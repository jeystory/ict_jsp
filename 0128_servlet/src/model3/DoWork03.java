package model3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoWork03  implements DoWork {
	public String DoWork(HttpServletRequest request, HttpServletResponse response) {
		// 근무시간
		String result ="";
		
		int wHour = 0;
		int  wage = 0;
		int pay = 8350;
		
		String strHour = request.getParameter("time");
		
		wHour = Integer.parseInt(strHour);
		if(wHour > 8) {
			wage = (int)((wHour-8) * pay * 1.5) + (8*pay);
		} else {
			wage = wHour * pay;
		}
		
		result = "당신이 일한 시간은 " + wHour + "이고 받아야 할 임금은 " + wage + "원 입니다.";
		return result;
	}
}
