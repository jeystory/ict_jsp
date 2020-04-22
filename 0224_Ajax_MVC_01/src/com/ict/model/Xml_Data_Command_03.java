package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Xml_Data_Command_03 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product name='바나나우유' price='950' />");
		sb.append("<product name='탄산음료' price='1100' /> ");
		sb.append("<product name='아메리카노' price='1500' /> ");
		sb.append("<product name='작은 물' price='500' /> ");
		sb.append("</products>");
		return sb.toString();
	}
}
