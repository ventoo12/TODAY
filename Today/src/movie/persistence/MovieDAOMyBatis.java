package movie.persistence;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import movie.domain.MovieVO;

public class MovieDAOMyBatis {

	
	private final String NS = "movie.persistence.MovieMapper";

	private SqlSession ses;//

	public SqlSessionFactory getSessionFactory() {
			SqlSessionFactoryBuilder builder = null;
			String resource = "common/config/mybatis-config.xml";// 설계도 같은 역할

			try {
				InputStream is = Resources.getResourceAsStream(resource);
				builder = new SqlSessionFactoryBuilder();// 건축가
				SqlSessionFactory factory = builder.build(is);// 공장 짓기
				return factory;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}

	public List<MovieVO> movieList() {
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".MovieList_Mileage");
			return arr;
		} finally {
			close();
		}
	}//-------------------------------------------------------------------
	
	
	public List<MovieVO> movieList2() {
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".MovieList_Hit");
			return arr;
		} finally {
			close();
		}
	}
	
	
	public List<MovieVO> movieList3() {
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".MovieList_New");
			return arr;
		} finally {
			close();
		}
	}
	
	public List<MovieVO> mList() {
		
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".ListMovie");
			return arr;
		} finally {
			close();
		}
	}

	public List<MovieVO> mDelete() {
		
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".MovieDelete");
			return arr;
		} finally {
			close();
		}
	}
	
	public List<MovieVO> mUpdate() {
		
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".MovieUpdate");
			
			return arr;
		} finally {
			close();
		}
	}
	
	
	public List<MovieVO> mWrite() {
		
		try {
			ses=this.getSessionFactory().openSession(true);
			List<MovieVO> arr=ses.selectList(NS+".MovieWrite");
			
			return arr;
		} finally {
			close();
		}
	}
	
	public void close() {
		if(ses!=null) ses.close();
	}//-----------------------------	
}// --------------------------------

