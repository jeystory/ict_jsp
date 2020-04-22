package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Text_Data_Command {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// return "ok";
		StringBuffer sb = new StringBuffer();
		sb.append("1,홍길동,24,서울/");
		sb.append("2,일지매,14,경기도/");
		sb.append("3,임꺽정,36,함경도/");
		sb.append("4,고길동,31,서울/");
		sb.append("5,마이콜,25,제주도");
		return sb.toString() ;
	}
}
