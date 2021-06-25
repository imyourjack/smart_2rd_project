package model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.UserVO;

public class UserDAO {
	private PreparedStatement ps;
	private ResultSet rs;	
	private Connection getConnect() throws Exception {		
		String URL="jdbc:mysql://localhost:3306/mysql";
		String user="root";
		String password="12345";
		// MySQL Driver Loading(jar)
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection(URL, user, password);
		return conn;		
	}
	// userList()
	public List<UserVO> userList(UserVO vo) throws Exception{
		List<UserVO> list=new ArrayList<UserVO>();
		Connection conn=getConnect();
		String SQL="select idx,title,count,contents,writer, DATE_FORMAT(indate,'%Y-%m-%d') AS indate from tbl_user";
		ps=conn.prepareStatement(SQL);
		rs=ps.executeQuery();
		// while + VO + List 
		while(rs.next()) {
		  
		  String user_id=rs.getString("user_id");
		  String password=rs.getString("password");
		  String user_name=rs.getString("user_name");
		  String wondu_n = rs.getString("wondu_n");
		  
		  
		//이전 수업에 했던 부분
//		  int count=rs.getInt("count");
//		  String indate=rs.getString("indate");
//		  UserVO vo=new UserVO();
		 
		  vo.setUser_id(user_id);
		  vo.setPassword(password);
		  vo.setUser_name(user_name);
		  vo.setwondu_n(wondu_n);
		  
		  //이전 수업에 했던 부분
//		  vo.setCount(count);
//		  vo.setIndate(indate); // Date->String
//		  list.add(vo);		  		  
		}
		return list; //여기 리스트 아닌데 우선 이렇게 해둠!!
	}
	// userInsert() 회원 가입하기
	public int userInsert(UserVO vo) throws Exception {
		 Connection conn=getConnect();
		 String SQL="insert into user_tbl(user_id, password, user_name) values(?,?,?)";
		 ps=conn.prepareStatement(SQL);
		 ps.setString(1, vo.getUser_id());
		 ps.setString(2, vo.getPassword());
		 ps.setString(3, vo.getUser_name());		 
		 int cnt=ps.executeUpdate();//실행
		 return cnt;
	}
//	// userDelete()
//	public int userDelete(int idx) throws Exception {
//		 Connection conn=getConnect();
//		 String SQL="delete from user_tbl where user_id=?";
//		 ps=conn.prepareStatement(SQL);
//		 ps.setString(1, user_id); //여기 user_id 들어가면 되지 않나? 왜 에러?
//		 int cnt=ps.executeUpdate(); //실행
//		 return cnt;
//	}
	
//	// userUpdate()
//    public int userUpdate(UserVO vo) throws Exception {
//    	Connection conn=getConnect();
//    	String SQL="update user_tbl set user_id = ?, password = ? where idx = ?";
	
	//여기에는 idx가 없는데 무슨 값으로 하지? 그냥 where 빼고 user_id를 넣워줘야 하나??
	//이렇게? => String SQL="update user_tbl set password = ?, user_name = ? where user_id = ?";
	
//    	ps=conn.prepareStatement(SQL);

//    	ps.setString(2, vo.getPassword());
//    	ps.setString(2, vo.getUser_name());
//    	int cnt=ps.executeUpdate();//실행
//    	return cnt;
//    }
}
