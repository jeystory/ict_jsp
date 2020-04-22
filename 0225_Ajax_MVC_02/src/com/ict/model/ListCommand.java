package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	    // DB 정보 가져오기 
		List<VO> list = DAO.getList();
		
		// ajax 이기 때문에  return 때  뷰 페이지 정보가 아니라 
		// xml, text, json 등으로 만들어서 보낸다.
		StringBuffer sb = new StringBuffer();
		// 여기서는 xml를 만들자 
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<members>");
		for (VO k : list) {
			sb.append("<member>");
			sb.append("<idx>"+k.getIdx()+"</idx>");
			sb.append("<id>"+k.getId()+"</id>");
			sb.append("<pw>"+k.getPw()+"</pw>");
			sb.append("<name>"+k.getName()+"</name>");
			sb.append("<age>"+k.getAge()+"</age>");
			sb.append("<addr>"+k.getAddr()+"</addr>");
			sb.append("</member>");
		}
		sb.append("</members>");
		return sb.toString();
	}
}










