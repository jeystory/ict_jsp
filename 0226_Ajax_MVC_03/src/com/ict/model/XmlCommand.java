package com.ict.model;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XmlCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// xml 파일 받아서 처리 
		StringBuffer sb = new StringBuffer();
		BufferedReader br =  null ;  // 문자일 경우
		// BufferedInputStream = null ; // 문자를 제외한 나머지인 경우
		try {
			URL url = new URL("http://www.kma.go.kr/XML/weather/sfc_web_map.xml");
			URLConnection conn = url.openConnection();
			br = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"utf-8"));
			String msg = "";
			while((msg=br.readLine()) != null) {
				sb.append(msg);
			}
		} catch (Exception e) {
		} finally {
			try {
				br.close();
			} catch (Exception e2) {
			}
		}
		return sb.toString();
	}
}
