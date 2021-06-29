package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.BoardVO;
import model.DAOMybatis;

public class AjaxBoardContentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ggggggggggg");
		DAOMybatis dao = new DAOMybatis();
		int content_idx = Integer.parseInt(request.getParameter("content_idx")); // String->int로 받기 위함
		BoardVO vo = dao.boardContent(content_idx);
		Gson g = new Gson();
		String data = g.toJson(vo);
		response.setContentType("text/json;charset=euc-kr");// 프린트라이터 마임타입 (한글안꺠지게)
		PrintWriter out = response.getWriter();
		out.println(data); //text/json
		
		return null;
	}

}
