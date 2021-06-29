package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardVO;
import model.DAOMybatis;

public class AjaxBoardRegisterController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/json;charset=euc-kr");// 프린트라이터 마임타입 (한글안깨지게)
		DAOMybatis dao = new DAOMybatis();
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String user_id = request.getParameter("user_id");
		BoardVO vo = new BoardVO(); //객체만들기
		vo.setTitle(title);
		vo.setContents(contents);
		vo.setUser_id(user_id);
		String view = null;
		int cnt = dao.boardInsert(vo);
		PrintWriter out = response.getWriter();
		out.println(cnt);
		
		return null;
	}

}
