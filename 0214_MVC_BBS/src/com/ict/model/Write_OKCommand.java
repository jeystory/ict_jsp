package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.ict.db.B_VO;


public class Write_OKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		// 1. 실제 파일 저장할 위치 디렉토리를 구하자 (톰켓안에 프로젝트 안에 존재)
		String path = request.getServletContext().getRealPath("/upload");
		
		// 2. MultipartRequest를 생성하자
		try {
			MultipartRequest mr;
			mr = new MultipartRequest(request, // request 정보
					path, // 저장위치 정보
					100 * 1024 * 1024, // 업로드 할 수 있는 용량지정 (kB>MB>GB>TB) : 100MB
					"utf-8", // 인코딩 지정
					new DefaultFileRenamePolicy() // 파일이름 중복 처리
			);
			// 파라미터값 받기
			B_VO b_vo = new B_VO();
			
			b_vo.setSubject(mr.getParameter("subject"));
			b_vo.setWriter(mr.getParameter("writer"));
			b_vo.setContent(mr.getParameter("content"));
			b_vo.setPwd(mr.getParameter("pwd"));

	
			if (mr.getFile("file_name") != null) {
				b_vo.setFile_name(mr.getFilesystemName("file_name"));
			} else {
				b_vo.setFile_name("");
			}
			
			// 데이터베이스에 데이터 저장
			int result = DAO.getInsert(b_vo);
		
			if(result > 0) {
				return "MyController?cmd=list" ;
			}else {
				return "MyController?cmd=write";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
