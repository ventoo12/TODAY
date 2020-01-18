package user.login;

import java.io.InputStream;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.domain.UserVO;
import user.login.NotUserException;

// 회원가입 페이징 처리 DAO 입니다.
public class UserDAOMyBatis {

	private final String NS = "user.login.UserMapper";
	private SqlSession ses;
	private ResultSet rs;

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
	
	//List vo
	public List<UserVO> makeList(ResultSet rs) throws SQLException {
		List<UserVO> arr = new ArrayList<>();
		while (rs.next()) {
			int idx = rs.getInt("idx");
			String name = rs.getString("name");
			String nick_name = rs.getString("nick_name");
			String userid = rs.getString("userid");
			String email = rs.getString("email");
			String pwd = rs.getString("pwd");
			String birth = rs.getString("birth");
			String hp1 = rs.getString("hp1");
			String hp2 = rs.getString("hp2");
			String hp3 = rs.getString("hp3");
			String post = rs.getString("post");
			String addr1 = rs.getString("addr1");
			String addr2 = rs.getString("addr2");
			Date indate = rs.getDate("indate");
			int mileage = rs.getInt("mileage");
			int m_state = rs.getInt("m_state");
			String profile = rs.getString("profile");
			UserVO vo = new UserVO(idx, nick_name, name, userid, email, pwd, birth, hp1,
					hp2, hp3, post, addr1, addr2, indate, mileage, m_state, profile);
			arr.add(vo);
		}
		return arr;
	}
	
	// 로그인 아이디로 회원정보 조회
	public UserVO selectByUserid(String userid) throws SQLException, NotUserException {
		try {
			System.out.println("여기는 들어왔지");
			System.out.println("ses : "+ses);
			ses = this.getSessionFactory().openSession(true);
			ResultSet rs = ses.selectOne(NS + ".selectUser", userid);
			// System.out.println("rs : " + rs);
			List<UserVO> arr = makeList(rs);
			if (arr != null && arr.size() == 1) {
				return arr.get(0);
			} else {
				// 사용자 정의 예외 발생
				throw new NotUserException(userid + "란 아이디는 존재하지 않습니다.");

			}
		} finally {
			close();
		}
	}
	
	public UserVO loginCheck(String userid, String pwd) throws SQLException, NotUserException {

		ses = this.getSessionFactory().openSession(true);
		//System.out.println("여기 ses"+ses);
		// UserVO user = selectByUserid(userid);
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
