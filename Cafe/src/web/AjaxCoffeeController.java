package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAOMybatis;
import model.UserVO;
import model.wonduCVO;

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
		UserVO vo = new UserVO();
		
		vo.setWondu_n(data);
		vo.setUser_id(userVO.getUser_id());
		dao.coffeeContents(vo);
		
		//wonduCVO cvo = new wonduCVO();
//		String wondu_c = request.getParameter("result");    = > 시행착오
		//wonduCVO cvo = new wonduCVO();
//	     wonduCVO cvo = new wonduCVO();
//	     cvo = dao.wondu_name(wondu_c);
//	     session.setAttribute("wonduInfo", cvo);
//	
//		  cvo.setWondu_c(wondu_c);
//		  dao.wonduContent(cvo);
//		
		wonduCVO vo2 = dao.wondu_name(data); // 플라스크로 가지고온 result = data 를 wonduCVO에 담아줌
		
		System.out.println(vo2.getPrice()); // 프린트문으로 가지고 오나 확인
		System.out.println(vo2.getWondu_c());  
		session.setAttribute("vo2", vo2); // 세션에 가격, 원두 컨텐츠를 담아주자
		session.setAttribute("wonduInfo", data);
	    
		return "redirect:/recooutput.jsp";
	}

}
