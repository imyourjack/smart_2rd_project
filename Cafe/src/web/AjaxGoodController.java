
package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.DAOMybatis;
import model.GoodVO;

public class AjaxGoodController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=euc-kr");
		//GoodVO vo = new GoodVO();
		DAOMybatis dao = new DAOMybatis();
		List<GoodVO> list = dao.good();
	      
	      Gson g = new Gson();
	      String bList= g.toJson(list);// {(    ),(     ),(     )}
	      System.out.println(bList);
	      response.setContentType("text/json; charset=euc-kr");
	      PrintWriter out = response.getWriter();
	      out.println(bList);

	      return null;

	
	}

}

