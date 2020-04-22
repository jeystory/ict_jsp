package com.ict.db;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.ict.db.B_VO;

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
	
		// 리스트 : 페이징 기법을 사용하면 사용되지 않음
		/*
		public static List<B_VO> getList(){
			List<B_VO> list = null;
			try {
								
				list = getSession().selectList("list");
				ss.commit(); // 수동커밋일때 반드시 실행해야 함
			} catch (Exception e) {
				System.out.println(e);
			}
			return list;
		}
		*/
		
		public static List<B_VO> getList(int begin , int end){
			List<B_VO> list = null;
			try {
				Map<String, Integer> map = new HashMap<String, Integer>();
				map.put("begin", begin);
				map.put("end", end);
				
				list = getSession().selectList("list", map);
				ss.commit(); // 수동커밋일때 반드시 실행해야 함
			} catch (Exception e) {
				System.out.println(e);
			}
			return list;
		}
		
		//insert , delete, update -> return int
		public static int getInsert(B_VO b_vo) {
			int result = 0;
			try {
				result = getSession().insert("b_insert", b_vo);
				ss.commit();	//manual commit 
			} catch(Exception e ) {
				
			}
			return result;
		}
		
		public static int hitUpdate(String b_idx){
			int result = 0;
			try {	
				result = getSession().update("hit_update", b_idx);
				ss.commit();	
			} catch(Exception e) {
				
			}
			return result;
		}
		
		public static B_VO getOneList(String b_idx) {
			B_VO b_vo = null;
			try {
				b_vo = getSession().selectOne("onelist", b_idx);
			} catch (Exception e) {
			}
			return b_vo;
		}
		
		public static int getDelete(String b_idx) {
			int result = 0;
			try {
				result = getSession().delete("delete", b_idx);
				ss.commit();	
			} catch(Exception e) {
				System.out.println(e);
			}
			return result;
		}
		
		public static int getUpdate(B_VO b_vo) {
			int result = 0;
			try {									
				result = getSession().update("update", b_vo);
				ss.commit();	
			} catch(Exception e) {
				System.out.println(e);
			}
			return result;
		}
		
		public static int getCount() {
			int result = 0 ;
			try {
				result = getSession().selectOne("count");	
				ss.commit();
			}catch (Exception e) {
			}
			return result;
		}
		
		//댓글 처리
		public static List<C_VO> getc_list(String b_idx) {
			List<C_VO> c_vo = null;
			try {	
				c_vo = getSession().selectList("c_list", b_idx);	
				ss.commit();
			}catch (Exception e) {
				System.out.println(e);
			}
			return c_vo;
		}
		
		public static int getC_Insert(C_VO cvo){
			int result = 0;
			
			try { 
				result = getSession().insert("c_insert",cvo);
				ss.commit();	//manual commit 
			
			}catch(Exception e) {
				System.out.println(e);
			}
			
			return result;
			
		}
		
		public static int getC_Delete(String c_idx) {
			int result = 0;
			try {
				result = getSession().delete("c_delete",c_idx);
				System.out.println("c_delete" + result);
				ss.commit();	//manual commit 
			} catch(Exception e) {
				System.out.println(e);
			}
			
			return result;
		}
		
		public static void getC_AllDelete(String b_idx) {
			try {
				getSession().delete("all_comm_delete", b_idx);
			} catch (Exception e) {
			}
		}
	
}





