package com.ict.model;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.jdbc.DAO;
import com.ict.jdbc.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.io.IOException;
public class Write_OKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		// 1. 실제 파일 저장할  위치 디렉토리를 구하자 (톰켓안에 프로젝트 안에 존재)
		String path = request.getServletContext().getRealPath("/upload");

		   // 2. MultipartRequest를 생성하자
		   //   cos.jar에서 지원
		  
		try {
			 MultipartRequest mr;
			mr = new MultipartRequest(
					   request,       				// request 정보
					   path,          				// 저장위치 정보
					   100*1024*1024, 		// 업로드 할 수 있는 용량지정 (kB>MB>GB>TB) : 100MB
					   "utf-8",       				// 인코딩 지정  
					   new DefaultFileRenamePolicy() // 파일이름 중복 처리
					   );
			
			   
			   VO vo = new VO();
			   vo.setName(mr.getParameter("name"));
			   vo.setSubject(mr.getParameter("subject"));
			   vo.setContent(mr.getParameter("content"));
			   vo.setPwd(mr.getParameter("pwd"));
			   vo.setEmail(mr.getParameter("email"));
			  
			   if(mr.getFile("f_name")!= null){
				   vo.setF_name(mr.getFilesystemName("f_name"));
			   } else{
				   vo.setF_name("");
			   }
			

			// 데이터베이스에 데이터 저장 
			int result = DAO.getInstance().getInsert(vo); 
			    request.setAttribute("result", result); 
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "view/write_ok.jsp";
		
			
	}

}
