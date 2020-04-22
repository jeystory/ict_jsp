package model3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoWork02  implements DoWork{
	public String DoWork(HttpServletRequest request, HttpServletResponse response) {
		String result ="";
		
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		String  op = request.getParameter("op");
		int res = 0;
		
		switch(op) {
		case "+": res = su1 + su2;	break;
		case "-":	res = su1 - su2;break;
		case "*":	res = su1 * su2; break;
		case "/":	res = su1 / su2; break;
		}
		
		result =  su1 + op + su2 + " = " + (su1 +su2);
		
		return result;
	}
}
