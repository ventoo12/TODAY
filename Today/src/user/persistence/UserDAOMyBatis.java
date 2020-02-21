package user.persistence;

import java.io.InputStream;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.domain.UserVO;
import user.persistence.NotUserException;

// 회원가입 페이징 처리 DAO 입니다.
public class UserDAOMyBatis {

	private final String NS = "user.persistence.UserMapper";
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
			e.printStackTrace();
			return null;
		}
	}// ===========================

	// 회원 등록 메소드
	public int insertUser(UserVO user) {
		try {
			ses = this.getSessionFactory().openSession();
			int n = ses.insert(NS + ".insertUser", user);
			// 수동커밋
			if (n > 0)
				ses.commit();
			else
				ses.rollback();
			return n;
		} finally {
			close();
		}
	}// ========================

	// 아이디 중복체크 메소드
	public boolean idCheck(String userid) throws SQLException {
		try {
			ses = this.getSessionFactory().openSession(true);
			// System.out.println(userid + "DAO"+ses);
			Integer id = ses.selectOne(NS + ".id", userid);
			if (id != null) {
				return false;
			} else {
				return true;
			}
		} finally {
			close();
		}
	}

	// 닉네임 중복체크 메소드
	public boolean nick_check(String nick_check) throws SQLException {
		try {
			ses = this.getSessionFactory().openSession(true);
			// System.out.println(nick_check + "DAO");
			Integer nick = ses.selectOne(NS + ".nick", nick_check);
			if (nick != null) {
				return false;
			} else {
				return true;
			}
		} finally {
			close();
		}
	}
	
	public UserVO loginCheck(String userid, String pwd) throws SQLException, NotUserException {

		ses = this.getSessionFactory().openSession(true);
		UserVO user = ses.selectOne(NS + ".selectUser", userid);
		if (user != null) {
			String dbPwd = user.getPwd();

			if (dbPwd.equals(pwd)) {
				return user;
			}
		}
		throw new NotUserException("비밀번호가 일치하지 않습니다.");
	}
	

	private void close() {
		if (ses != null)
			ses.close();
	}



	

}
