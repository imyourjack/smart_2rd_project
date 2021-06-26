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
import model.wonduVO;

//@WebServlet("/recocoffee.do")
public class AjaxCoffeeController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/json;charset=euc-kr");
		request.setCharacterEncoding("utf-8");
		DAOMybatis dao = new DAOMybatis();

		HttpSession session = request.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userVO");

		// String aroma = request.getParameter("chk_info1");
		// int cnt = dao.coffeeContents(userVO);
//		PrintWriter out = response.getWriter();
//		out.println(data);

//		response.sendRedirect("./recodata.jsp");

		// String rosting = request.getParameter("chk_info2");
		String data = request.getParameter("result");

		UserVO vo = new UserVO();

		vo.setWondu_n(data);
		vo.setUser_id(userVO.getUser_id());

		dao.coffeeContents(vo);
		// 그럼 아직 추천받은 커피를 꺼내는건 안되있는건가요?네!sql은 작성해줚는뎅 사용을 못하고 있어요 어디에 작성했나요

		session.setAttribute("wonduInfo", data);
		//wonduVO cvo;
		//cvo = dao.wondu_name(data);

		//session.setAttribute("wonduInfo", cvo);

		/*
		 * UserVO wondu_name = (UserVO)session.getAttribute("userVO"); wonduVO wonduVO =
		 * new wonduVO(); // 예 전화통화 가능 핫;ㄴ가용 ??01046115278 dao.wondu_name();
		 * wonduVO.getWondu_n();
		 */

		return "redirect:/recooutput.jsp";
	}

}
