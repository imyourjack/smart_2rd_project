package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAOMybatis;

public class BoardDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx")); // String->int로 받기 위함

		String view = null;
		// BoardDAO dao = new BoardDAO();
		DAOMybatis dao = new DAOMybatis();
		try {
			int cnt = dao.boardDelete(idx);
			// redirect
			if (cnt > 0) {
				// response.sendRedirect("list.do"); // /MVC01/list.do
				view = "redirect:/list.do";
			} else {
				throw new ServletException("error");// WAS(Tomcat) 에러 던지기
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return view;
	}

}
