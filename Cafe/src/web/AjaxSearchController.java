package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAOMybatis;
//import model.WonduCVO;

public class AjaxSearchController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String wondu_n = request.getParameter("wondu_n");
		String wondu_c = request.getParameter("wondu_c");
		String price = request.getParameter("price");
		String cafe = request.getParameter("cafe");

//		WonduCVO vo = new WonduCVO();// 객체만들기
//		vo.setWondu_n(wondu_n);
//		vo.setWondu_c(wondu_c);
//		vo.setPrice(price);
//		vo.setCafe(cafe);
//		String view=null;
////		BoardDAO dao=new BoardDAO();
//		DAOMybatis dao=new DAOMybatis();
//		WonduCVO wonducVO = dao.search(vo);
//		
//		int cnt = dao.Search(vo);
//		PrintWriter out = response.getWriter();
//		out.println(cnt);
		
		return null;
	}

}
