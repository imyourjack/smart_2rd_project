package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAOMybatis;
import model.UserVO;


//@WebServlet("/recocoffee.do")
public class AjaxCoffeeController implements Controller {
    
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/json;charset=euc-kr");
		request.setCharacterEncoding("utf-8");
		DAOMybatis dao = new DAOMybatis();
		 
		HttpSession session = request.getSession();
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		

		String data = request.getParameter("result");
		//System.out.println(data+"확인");
		
		
		UserVO vo = new UserVO();
		
		
		
		vo.setWondu_n(data);
		vo.setUser_id(userVO.getUser_id());
	     
		dao.coffeeContents(vo);
		
		//wonduCVO cvo = new wonduCVO();
		//String data1 = request.getParameter("result");
		//wonduCVO cvo = new wonduCVO();
//	     wonduCVO cvo;
//	     cvo = dao.wondu_name(data);
//	     session.setAttribute("wonduInfo", cvo);
//	
		
		
		session.setAttribute("wonduInfo", data);
	
		/*
		 * UserVO wondu_name = (UserVO)session.getAttribute("userVO"); wonduVO wonduVO =
		 * new wonduVO(); // 예 전화통화 가능 핫;ㄴ가용 ??01046115278 dao.wondu_name();
		 * wonduVO.getWondu_n();
		 */
		
		return "redirect:/recooutput.jsp";
	}

}
