package main.persistence;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import board.domain.TodayVO;


public class MainDAOMyBatis {
	
	private final String NS="board.persistence.mapper";
	private SqlSession ses;
	
	public SqlSessionFactory getSessionFactory() {
		SqlSessionFactoryBuilder builder=null;
		String resource="common/config/mybatis-config.xml";
		
		try {
			InputStream is=Resources.getResourceAsStream(resource);
			builder=new SqlSessionFactoryBuilder();
			SqlSessionFactory factory=builder.build(is);
			return factory;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/** 메인화면에 모든 게시글 출력하는 메소드 */
	public List<TodayVO> listBoard(){
		try {
			ses=getSessionFactory().openSession(true);
			List<TodayVO> arr=ses.selectList(NS+".listBoard");
			return arr;
		} finally {
			close();
		}
	}
	
	/** 메인화면에서 한 줄 메모장 입력하는 메소드 */
	public int insertBoard(TodayVO vo) {
		try {
			ses=getSessionFactory().openSession(true);
			int n=ses.insert(NS+".insertBoard", vo);
			return n;
		} finally {
			close();
		}
	}
	
	private void close() {
		if(ses!=null) ses.close();
	}

}
