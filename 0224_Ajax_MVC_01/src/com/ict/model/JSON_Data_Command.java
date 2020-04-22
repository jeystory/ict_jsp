package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JSON_Data_Command {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("[");
		sb.append("{\"name\":\"호두우유\", \"price\" : \"950\"},");
		sb.append("{\"name\":\"이온음료\", \"price\" : \"1100\"},");
		sb.append("{\"name\":\"카페라떼\", \"price\" : \"1500\"},");
		sb.append("{\"name\":\"맑은샘물\", \"price\" : \"500\"}");
		sb.append("]");
		return sb.toString();
	}
}
