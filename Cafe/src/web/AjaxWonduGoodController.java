package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;


import model.DAOMybatis;

import model.GoodVO;
import model.UserVO;

public class AjaxWonduGoodController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(); 
		response.setContentType("text/json;charset=euc-kr");// 프린트라이터 마임타입 (한글안깨지게)
		DAOMybatis dao = new DAOMybatis();
		int good = Integer.parseInt(request.getParameter("good").trim());
		
		String test_coffee = (String) session.getAttribute("wonduInfo");
		System.out.println("테스트 커피 >>"+ test_coffee);
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		String test_id = userVO.getUser_id();
		
		System.out.println("테스트 아이디>> "+ test_id);
		
		/*
		 * String wondu_n = request.getParameter("wondu_n");
		 * System.out.println(wondu_n); String user_id =
		 * request.getParameter("user_id"); System.out.println(user_id);
		 */
		
		System.out.println(good);
		
		GoodVO vo = new GoodVO(); //객체만들기
		vo.setGood(good);
		vo.setWondu_n(test_coffee);
		vo.setUser_id(test_id);
		String view = null;
		session.setAttribute("vo", vo);
        
//		Gson g = new Gson();
//		String data = g.toJson(vo);
		PrintWriter out = response.getWriter();
		System.out.println("현기증나니까 들어오라니까??");
		int cnt = dao.insertgood(vo);
		System.out.println("들어와 임마!");
		out.println(cnt);
		
		return null;
	}

}
