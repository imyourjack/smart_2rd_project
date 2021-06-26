package model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DAOMybatis {
	private static SqlSessionFactory sqlSessionFactory;
	static { // 초기화 블록
		try {
			String resource = "mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public UserVO loginMember(UserVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		vo = sqlSession.selectOne("loginMember", vo);
		sqlSession.close();
		return vo;
	}
	public int coffeeContents(UserVO vo ) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.insert("coffeeContents", vo);
		sqlSession.commit();//완료  insert, update, delete는 commit을 해줘야함
		sqlSession.close();//반납
		return cnt;
	}
	public UserVO wondu_name(String user_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserVO vo = sqlSession.selectOne("wondu_name", user_id);
		sqlSession.close();
		return vo;
	}
	public int Update(UserVO vo) {
		 SqlSession sqlSession=sqlSessionFactory.openSession();
			int cnt = sqlSession.update("Update", vo);
			sqlSession.commit();//완료
			sqlSession.close();//반납
			return cnt;
	 }
	
	public WonduCVO search(WonduCVO vo) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		WonduCVO wonducvo = sqlSession.selectOne("wondu_n", wondu_n);
		sqlSession.close();
		return vo;
	}
	
	
	
	
}
