package model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Play02 {
	public String play(HttpServletRequest request, HttpServletResponse response) {
		String result="";
		Calendar now = Calendar.getInstance();
		int y = now.get(Calendar.YEAR);
		int m = now.get(Calendar.MONTH) + 1;
		int d = now.get(Calendar.DATE);
		result = y +"년 " + m +"월" + d + "일";
		return result;
	}
}
