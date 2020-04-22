package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.B_VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_OKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터값 받기
		String path = request.getSession().getServletContext().getRealPath("/upload");

		MultipartRequest mr;
		try {
			mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			
			B_VO b_vo = new B_VO();

			b_vo.setWriter(mr.getParameter("writer"));
			b_vo.setSubject(mr.getParameter("subject"));
			b_vo.setContent(mr.getParameter("content"));
			b_vo.setPwd(mr.getParameter("pwd"));
			b_vo.setB_idx(mr.getParameter("b_idx"));
			
			String cPage = mr.getParameter("cPage");
	
			// 파일은 업로드 할때와 안할때를 구별해야 된다.
			if (mr.getFile("file_name") != null) {
				b_vo.setFile_name(mr.getFilesystemName("file_name"));
			} else {
				b_vo.setFile_name("");
			}
					
			request.setAttribute("cPage", cPage);
			request.setAttribute("b_idx", b_vo.getB_idx());
			
			// db 처리 - 업데이트 
			int result = DAO.getUpdate(b_vo);
			
			if(result > 0) {
				return "/MyController?cmd=onelist" ;
			}else {
				return "/MyController?cmd=write";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
