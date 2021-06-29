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
			System.out.println("들어왔니?");
			String resource = "mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public UserVO loginMember(UserVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();//XML접근
		
		vo = sqlSession.selectOne("loginMember", vo);
		
		sqlSession.close();
		return vo;
	}
	public int coffeeContents(UserVO vo ) {
		System.out.println(vo.getUser_id());
		System.out.println(vo.getWondu_n());
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.insert("coffeeContents", vo);     //커피컨텐츠(정보) 를 넣는 sql문 ->boardmapper
		sqlSession.commit();//완료  insert, update, delete는 commit을 해줘야함
		sqlSession.close();//반납
		return cnt;
	}

	public wonduCVO wondu_name(String wondu_n) {
		  System.out.println("원두이름 : " + wondu_n); //확인해보려고 출력문
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      wonduCVO vo = sqlSession.selectOne("wondu_name", wondu_n);   // 원두 이름이라는 sql문
	      sqlSession.close();
	      return vo;
	 }

//	public wonduCVO wondu_name(String wondu_n) {
//	      SqlSession sqlSession = sqlSessionFactory.openSession();
//	      wonduCVO vo = sqlSession.selectOne("wondu_name", wondu_n);
//	      sqlSession.close();
//	      return vo;
//	   }

	public int Update(UserVO vo) {
		 SqlSession sqlSession=sqlSessionFactory.openSession();
			int cnt = sqlSession.update("Update", vo);
			sqlSession.commit();//완료
			sqlSession.close();//반납
			return cnt;
	 }
	public wonduCVO wonduContent(wonduCVO cvo){
		SqlSession sqlSession = sqlSessionFactory.openSession();	
		wonduCVO vo = sqlSession.selectOne("wonduContent", cvo);  // 원두 컨텐츠 뽑는 sql문
		sqlSession.close();
		return vo;
	}
	public List<GoodVO> good(){
	      SqlSession sqlSession=sqlSessionFactory.openSession();
	      List<GoodVO> list=sqlSession.selectList("good");//MAPPER이름 맞춰주기.
	      sqlSession.close();//반납
	      return list;
	   }

//	public WonduCVO search(WonduCVO vo) {
//		SqlSession sqlSession=sqlSessionFactory.openSession();
//		WonduCVO wonducvo = sqlSession.selectOne("wondu_n", wondu_n);
//		sqlSession.close();
//		return vo;
//	}
	
//	자유게시판 dao
	public List<BoardVO> content(){
		SqlSession sqlSession = sqlSessionFactory.openSession();	
		List<BoardVO> list = sqlSession.selectList("content");
		sqlSession.close();
		return list;
	}
	public BoardVO boardContent(int content_idx) {
		SqlSession sqlSession = sqlSessionFactory.openSession();	
		BoardVO vo = sqlSession.selectOne("boardContent", content_idx);
		sqlSession.close();
		return vo;
	}
	public int boardInsert(BoardVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.insert("boardInsert", vo);
		sqlSession.commit();//완료  insert, update, delete는 commit을 해줘야함
		sqlSession.close();//반납
		return cnt;
	}
	public int boardDelete(int contetnt_idx) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.delete("boardDelete", contetnt_idx);
		sqlSession.commit();
		sqlSession.close();
		return cnt;
	}
	public int insertgood(GoodVO vo ) {
		System.out.println(vo.getUser_id());
		System.out.println(vo.getWondu_n());
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = sqlSession.insert("insertgood", vo);     //커피컨텐츠(정보) 를 넣는 sql문 ->boardmapper
		sqlSession.commit();//완료  insert, update, delete는 commit을 해줘야함
		sqlSession.close();//반납
		return cnt;
	}
	public GoodVO goods(GoodVO vo) {
		 SqlSession sqlSession=sqlSessionFactory.openSession();
		 vo=sqlSession.selectOne("goods",vo);//MAPPER이름 맞춰주기.
		 sqlSession.close();//반납
		 return vo;
		
	}
	public List<wonduCVO> WonduSearchlist(String wondu_n){
		  SqlSession sqlSession=sqlSessionFactory.openSession();
		  List<wonduCVO> searchlist=sqlSession.selectList("WonduSearchlist",wondu_n);//MAPPER이름 맞춰주기.
		  System.out.println(searchlist.size());
		  sqlSession.close();//반납
		  return searchlist;
    }
	//원두 기본 정보 50몇개 뽑는 리스트

	   public List<wonduCVO> Wondulist(){
	      SqlSession sqlSession=sqlSessionFactory.openSession();
	      List<wonduCVO> list=sqlSession.selectList("Wondulist");//MAPPER이름 맞춰주기.
	      sqlSession.close();//반납
	      return list;
	   }
		
}
