package model;

import java.io.InputStream;
import java.util.List;

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
	public UserVO wondu_name(UserVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		vo = sqlSession.selectOne("wondu_name", vo);
		sqlSession.close();
		return vo;
	}
	
	
	
}
