package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAOMybatis;
import model.UserVO;

public class AjaxLoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
													throws ServletException, IOException {
		 String user_id = request.getParameter("user_id");
	     String password = request.getParameter("password");
		
	     System.out.println(user_id);
	     System.out.println(password);
	     
	     UserVO vo = new UserVO();
	     vo.setUser_id(user_id);
		 vo.setPassword(password);
	     
		 DAOMybatis dao = new DAOMybatis();
		 UserVO userVO = dao.loginMember(vo);
		 
		 PrintWriter out = response.getWriter();
		 if(userVO!=null) {
			 out.print("YES");  //인증 성공시 1
			 // 객체바인딩 : 로그인에 성공했다는 사실을 모든 웹페이지가 공유할 수 있도록 해야한다. => 세션바인딩
			 HttpSession session = request.getSession();
			 session.setAttribute("userVO", userVO);
		 }else {
			 out.print("NO");  // 인증에 실패 0
		 }
	     
		return null;
	}

}
