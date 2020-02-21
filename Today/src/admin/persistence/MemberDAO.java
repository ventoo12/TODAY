package admin.persistence;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;//mybatis-3.5.5.jar
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.domain.UserVO;

public class MemberDAO {
	
		private final String NS = "admin.persistence.MemberMapper";

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
		}// ------------------------------------
		
		public List<UserVO> listMember(int start, int end, String ftype, String keyword) {
			try {
				ses = getSessionFactory().openSession(true);
				/*
				 * sql������ ���߷��ڵ带 ��ȯ�ϸ� selectList()ȣ�� ���Ϸ��ڵ带 ��ȯ�ϸ� selectOne()ȣ��
				 */
				Map<String, String> map=new HashMap<>();
				map.put("start", String.valueOf(start));
				map.put("end", end+"");
				map.put("findType", ftype);
				map.put("findKeyword", keyword);
				System.out.println(start+"/"+end);
				
				System.out.println("map=="+map);
				List<UserVO> arr = ses.selectList(NS + ".listMember",map);
				return arr;
			} finally {
				close();
			}
		}// -----------------------------------------------------------------------
		
		
		/** �Ѹɹ� �������� �޼ҵ�, �˻��� �ɹ��� ������ */
		public int getTotalCount(String ftype, String keyword) {
			try {
				Map<String, String> map=new HashMap<>();
				map.put("findType", ftype);
				map.put("findKeyword", keyword);
				
				ses = this.getSessionFactory().openSession(true);
				int cnt = ses.selectOne(NS + ".totalCount", map);
				return cnt;
			} finally {
				close();
			}
		}
		
		/**���� ����*/
		public int updateState(UserVO vo) {
			try {
				ses=this.getSessionFactory().openSession(true);
				int n=ses.update(NS+".updateState", vo);
				return n;
			} finally {
				close();
			}
		}//--------------------------------------
		
		private void close() {
			if (ses != null)
				ses.close();
		}// --------------------------------------
}
