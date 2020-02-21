package meeting.persistence;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import meeting.domain.MeetingVO;

public class MeetingDAOMyBatis {
	
	private final String NS="meeting.persistence.MeetingMapper";
	private SqlSession ses;
	
	public SqlSessionFactory getSessionFactory() {
		
		SqlSessionFactoryBuilder builder=null;
		String resource="common/config/mybatis-config.xml";
		
		try {
			InputStream is = Resources.getResourceAsStream(resource);
			builder=new SqlSessionFactoryBuilder();
			SqlSessionFactory factory=builder.build(is);
			return factory;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}//-----------------------------------------
	
	/** 소모임 등록 */
	public int insertMeeting(MeetingVO meeting) {
		
		try {
			ses=this.getSessionFactory().openSession(true);
			int n=ses.insert(NS+".insertMeeting", meeting);
			return n;
		} finally {
			close();
		}
	}//---------------------------------------------------------
	
	/** 소모임 모든 게시글 출력 */
	public List<MeetingVO> selectAllList(String searchType, String keyword, int start, int end){
		try {
			ses=this.getSessionFactory().openSession(true);
			
			Map<String, String> map=new HashMap<>();
			map.put("searchType", searchType);
			map.put("keyword", keyword);
			map.put("start", String.valueOf(start));
			map.put("end", String.valueOf(end));			
			
			List<MeetingVO> mList=ses.selectList(NS+".selectAllList_pasing", map);
			System.out.println("mList="+mList);
			return mList;
		} finally {
			close();
		}
	}

	/** 소모임 1개 게시글 출력 */
	public MeetingVO selectOneList(int midx) {
		try {
			ses=this.getSessionFactory().openSession(true);
			MeetingVO info=ses.selectOne(NS+".selectOneList", midx);
			return info;
		} finally {
			close();
		}
	}
	
	/** 전체 게시글 수 얻는 메소드 */
	public int getTotalCount(String searchType, String keyword) {
		
		try {
			Map<String, String> map=new HashMap<>();
			map.put("searchType", searchType);
			map.put("keyword", keyword);

			ses=this.getSessionFactory().openSession(true);
			
			int count=ses.selectOne(NS+".getTotalCount", map);
			return count;
		} finally {
			close();
		}
	}

	/** 게시글 수정 메소드 */
	public int updateMeeting(MeetingVO vo) {
		
		try {
			ses=this.getSessionFactory().openSession(true);
			int n=ses.update(NS+".updateMeeting", vo);
			return n;
		} finally {
			close();
		}
	}
	
	
	public void close() {
		if(ses!=null) ses.close();
	}


	
}
