package user.login;

import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.domain.UserVO;
// 회원가입 페이징 처리 DAO 입니다.
public class UserDAOMyBatis {
	
		private final String NS = "user.login.UserMapper";
		private SqlSession ses;

		
		// get Factory
		public SqlSessionFactory getSessionFactory() {

			SqlSessionFactoryBuilder builder = null;
			String resource = "common/config/mybatis-config.xml";

			try {
				InputStream is = Resources.getResourceAsStream(resource);
				builder = new SqlSessionFactoryBuilder();
				SqlSessionFactory factory = builder.build(is);
				return factory;

			} catch (Exception e) {
				return null;
			}
		}// ===========================
		

		// 회원 등록 메소드
		public int insertUser(UserVO user) {
			try {
				ses = this.getSessionFactory().openSession();
				int n = ses.insert(NS+".insertUser", user);
				// 수동커밋
				if(n>0) ses.commit();
				else ses.rollback();
				return n;
			} finally {
				close();
			}
		}// ========================
		

		private void close() {
			if(ses!=null) ses.close();
		}
		
		

}
