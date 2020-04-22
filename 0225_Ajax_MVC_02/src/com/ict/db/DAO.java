package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB 처리하는 클래스
public class DAO {
	private static SqlSession ss;
	
	// 싱글턴 패턴
	private synchronized static SqlSession getSession() {
		if(ss == null) {
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	
	public static List<VO> getList(){
		List<VO> list = null;
		try {
			list = getSession().selectList("list");
			ss.commit();
		} catch (Exception e) {
		}
		return list;
	}
	public static List<VO> getIdChk(String id) {
		List<VO> list = null;
		try {
			list = getSession().selectList("idchk",id);
			ss.commit();
		} catch (Exception e) {
		}
		return list ;
	}
	
	public static int getInsert(VO vo) {
		int result = 0 ;
		try {
			//System.out.println(vo.getName());
			result = getSession().insert("insert", vo);
			//System.out.println(result);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
	
	public static int getDelete(String idx) {
		int result = 0 ;
		try {	
			result = getSession().delete("delete", idx);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
}





