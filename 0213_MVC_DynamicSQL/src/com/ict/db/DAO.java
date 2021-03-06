package com.ict.db;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

// DB 처리하는 클래스
public class DAO {
	private static SqlSession ss;
	
	// 싱글턴 패턴
	private synchronized static SqlSession getSession() {
		if(ss == null) {
			ss = DBService.getFactory().openSession(false);	//수동커밋
		}
		return ss;
	}
	
	// 전체보기
	public static List<VO> getList(){
		List<VO> list = null;
		try {
			list = getSession().selectList("list");
			ss.commit();
		} catch (Exception e) {
		}
		return list;
	}
	
	//  부서별 보기
	public static List<VO> getDeptList(String deptno){
		List<VO> d_list = null;
		try {
			d_list = getSession().selectList("d_list", deptno);
			ss.commit();
		} catch (Exception e) {
		}
		return d_list;
	}
	
	//동적퀴리
	public static List<VO> getDynamic(Map<String, String> map){
		List<VO> dy_list = null;
		try {
			dy_list = getSession().selectList("dy_list", map);
			ss.commit();
		} catch(Exception e) {
			System.out.println(e);
		}
		return dy_list;
	}
}





