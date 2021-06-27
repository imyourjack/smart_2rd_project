package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.DAOMybatis;
import model.UserVO;

public class AjaxBoardUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		response.setCharacterEncoding("UTF-8");
		
//		System.out.println(user_id+"/"+user_name+"/"+password);
		UserVO vo = new UserVO();// 객체만들기
		vo.setUser_id(user_id);
		vo.setUser_name(user_name);
		vo.setPassword(password);
		
//		BoardDAO dao=new BoardDAO();
		DAOMybatis dao=new DAOMybatis();
		int cnt = dao.Update(vo);
		PrintWriter out = response.getWriter();
		if(cnt > 0) {
			Gson gson = new Gson();
			HttpSession session = request.getSession();
			session.setAttribute("userVO", vo);
			out.println(gson.toJson(vo)); //$.ajax() -> 형식적으로 응답 : success
		}
		
		
		return null;
	}

}
