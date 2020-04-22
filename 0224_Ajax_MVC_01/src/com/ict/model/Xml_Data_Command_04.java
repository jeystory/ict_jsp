package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Xml_Data_Command_04 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product price='950'>");
		sb.append("<name>커피우유</name>");
		sb.append("</product>");
		sb.append("<product price='1100'>");
		sb.append("<name>탄산음료</name>");
		sb.append("</product>");
		sb.append("<product price='1500'>");
		sb.append("<name>아메리카노</name>");
		sb.append("</product>");
		sb.append("<product price='500'>");
		sb.append("<name>작은 물</name>");
		sb.append("</product>");
		sb.append("</products>");
		return sb.toString();
	}
}
