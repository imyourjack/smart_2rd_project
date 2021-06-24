package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAOMybatis;
import model.UserVO;
@WebServlet("/recocoffee.do")
public class AjaxCoffeeController implements Controller {
    
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/json;charset=euc-kr");
		request.setCharacterEncoding("utf-8");
		DAOMybatis dao = new DAOMybatis();
		
		 HttpSession session = request.getSession();
		 UserVO userVO = new UserVO();		
		session.setAttribute("userVO", userVO);
		String aroma = request.getParameter("chk_info1");
		String rosting = request.getParameter("chk_info2");
		String san = request.getParameter("chk_info3");
		
		
	    
		int cnt = dao.coffeeContents(userVO);
		PrintWriter out = response.getWriter();
		out.println(cnt);
		response.sendRedirect("/recodata.jsp");
		
		
		
		return null;
	}

}