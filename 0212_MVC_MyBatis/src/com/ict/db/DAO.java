package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ict.db.VO;

// DB처리하는 클래스
public class DAO {
	private static SqlSession ss;
	
	// 싱글턴 패턴
		private synchronized static SqlSession getSession() {
			if(ss == null) {
				
				ss = DBService.getFactory().openSession(false);
			}
			return ss;
		}
	
		//select 를 사용하면 VO, List<VO> 둘 중 하나
		//리스트
		public static List<VO> getList(){
			List<VO> list = null;
			try {
				list = getSession().selectList("list");
				ss.commit(); // 수동커밋일때 반드시 실행해야 함
			} catch (Exception e) {
			}
			return list;
		}
		
		//insert , delete, update -> return int
		public static int getInsert(VO vo) {
			int result = 0;
			try {
				//result = getSession().insert("mapper's id");
				//result = getSession().insert("mapper's id", parameter);
				result = getSession().insert("insert", vo);
				ss.commit();	//manual commit 
			} catch(Exception e ) {
				
			}
			return result;
		}
		
		public static VO getOneList(String idx) {
			VO vo = null;
			try {
				vo = getSession().selectOne("onelist", idx);
				ss.commit();	
			} catch (Exception e) {
			}
			return vo;
		}
		
		public static int getDelete(String idx) {
			int result = 0;
			try {
				result = getSession().delete("delete", idx);
				ss.commit();	
			} catch(Exception e) {
				
			}
			return result;
		}
		
		public static int getUpdate(VO vo) {
			int result = 0;
			try {
				result = getSession().update("update", vo);
				ss.commit();	
			} catch(Exception e) {
				
			}
			return result;
		}
		
		
	
}





