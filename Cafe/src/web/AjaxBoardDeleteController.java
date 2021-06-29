package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAOMybatis;

public class AjaxBoardDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/json;charset=euc-kr");// 프린트라이터 마임타입 (한글안꺠지게)
		DAOMybatis dao = new DAOMybatis();
		int idx = Integer.parseInt(request.getParameter("idx")); //String->int로 받기 위함
		int cnt = dao.boardDelete(idx);
		// 응답? 형식상 보내기
		PrintWriter out = response.getWriter();
		out.println(cnt);
		return null;
	}

}
