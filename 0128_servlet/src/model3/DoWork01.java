package model3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DoWork01 implements DoWork{
	public String DoWork(HttpServletRequest request, HttpServletResponse response) {
		String result ="";
		String hak = "";
		
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int total = kor + eng + math;
		double avg = (int)(total/3.0*10)/10.0;
		
		if(avg >= 90 ) {hak ="A";}
		else if(avg >= 80 ) {hak ="B";}
		else if(avg >= 70 ) {hak ="C";}
		else {hak ="F";}
		
		result = "국어 : " + kor + ",영어 : " + eng + ",수학 :" + math + ",총점 : " + total + ", 평균 : " + avg + ", 학점 : " + hak;
		
		return result;
	}
}
