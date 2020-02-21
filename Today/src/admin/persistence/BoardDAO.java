package admin.persistence;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;//mybatis-3.5.5.jar
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import admin.domain.BoardVO;


public class BoardDAO {
	
	private final String NS = "admin.persistence.BoardMapper";

	private SqlSession ses;//

	public SqlSessionFactory getSessionFactory() {
		SqlSessionFactoryBuilder builder = null;
		String resource = "common/config/mybatis-config.xml";

		try {
			InputStream is = Resources.getResourceAsStream(resource);
			builder = new SqlSessionFactoryBuilder();
			SqlSessionFactory factory = builder.build(is);
			return factory;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}// ----------------------------------
	
	/** �� �Խù� ���� �������� �޼ҵ�*/
	public int getTotalCount() {
		try {
			ses = this.getSessionFactory().openSession(true);
			int cnt = ses.selectOne(NS + ".totalCount2");
			return cnt;
		} finally {
			close();
		}
	}
	
	/** �۹�ȣ(idx)-PK �� �۳��� �������� �޼ҵ� */
	public BoardVO selectBoard(String idx) {
		try {
			ses = this.getSessionFactory().openSession(true);
			BoardVO vo = ses.selectOne(NS + ".selectBoard", idx);
			return vo;
		} finally {
			close();
		}
	}

	/**�ۻ���*/
	public int deleteBoard(String idx) {
		try {
			ses=this.getSessionFactory().openSession(true);
			int n=ses.delete(NS+".deleteBoard",idx);
			return n;
		} finally {
			close();
		}
	}//------------------------------------------------------
	
	
	private void close() {
		if (ses != null)
			ses.close();
	}// --------------------------------------
}
