package board.persistence;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import board.domain.TodayVO;
import board.domain.replyVO;

public class TodayDAO {
		private final String NS ="board.persistence.mapper";
		private SqlSession ses;
		public SqlSessionFactory getSessionFactory() {
			SqlSessionFactoryBuilder builder=null;
			String resource="common/config/mybatis-config.xml";
			try {
				InputStream is = Resources.getResourceAsStream(resource);
				builder = new SqlSessionFactoryBuilder();
				SqlSessionFactory factory = builder.build(is);	
				return factory;
			}
			catch(Exception e) {
				e.printStackTrace();
				return null;
			}
		}//getSessionFactory------------------------------
		
		public int insert(TodayVO vo) {
			try {
				ses = this.getSessionFactory().openSession(true);
				int n=ses.insert(NS+".insertToday", vo);
				if(n>0) { ses.commit(); }
				else { ses.rollback(); }
				return n;
			}
			finally { close(); }
		}//-------------------------------------------------------------------------

		public List<TodayVO> mylist(String userid) {
			try {
				ses = this.getSessionFactory().openSession(true);
				List<TodayVO> arr = ses.selectList(NS+".list",userid);
				return arr;
			}
			finally { close(); }
		}//-------------------------------------------------------------------------

		private void close() {
			if(ses!=null) { ses.close(); }
		}//-------------------------------------------------------------------------

		public int total(String nick_name) {
			try {
				ses = this.getSessionFactory().openSession(true);
				int cnt=ses.selectOne(NS+".total",nick_name);
				return cnt;
			}
			finally {
				close();
			}
		}//------------------------------------------------------------------
		
		public TodayVO getOne(String num) {
			try {
				ses = this.getSessionFactory().openSession(true);
				TodayVO board=ses.selectOne(NS+".getOne",num);
				return board;
			}
			finally {
				close();
			}
		}//-----------------------------------------------------------------------------------

		public List<replyVO> getReply(String num) {
			try {
				ses = this.getSessionFactory().openSession(true);
				List<replyVO> reply=ses.selectList(NS+".getReply",num);
				return reply;
			}
			finally {
				close();
			}
		}//-------------------------------------------------------------------------------------------

		public int update(TodayVO vo) {
			try {
				ses = this.getSessionFactory().openSession(true);
				int n=ses.insert(NS+".updateToday", vo);
				if(n>0) { ses.commit(); }
				else { ses.rollback(); }
				return n;
			}
			finally { close(); }
		}//-------------------------------------------------------------------------

		public int writeReply(replyVO vo) {
			try {
				ses = this.getSessionFactory().openSession(true);
				int n=ses.insert(NS+".writeReply", vo);
				if(n>0) { ses.commit(); }
				else { ses.rollback(); }
				return n;
			}
			finally { close(); }
		}//------------------------------------------------------------------------

		public int delete(String boardnum) {
			try {
				ses=this.getSessionFactory().openSession(true);
				int n=ses.delete(NS+".delete", boardnum);
				return n;
			}
			finally {
				close();
			}
		}//------------------------------------------------------------

		public int deleteReply(String replynum) {
			try {
				ses=this.getSessionFactory().openSession(true);
				int n=ses.delete(NS+".deleteReply", replynum);
				return n;
			}
			finally {
				close();
			}
		}//---------------------------------------------------------------

}
