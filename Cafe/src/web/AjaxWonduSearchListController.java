package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.DAOMybatis;
import model.wonduCVO;

public class AjaxWonduSearchListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//	   HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		String wondu_n = request.getParameter("wondu_n");
		System.out.println(wondu_n+"1111");
////      //String wondu_c = request.getParameter("wondu_c");
////      //String price = request.getParameter("price");
////      //String img = request.getParameter("img");
////      System.out.println(wondu_n);
//     request.setAttribute("wondu_n", wondu_n);
		 //wonduCVO vo = new wonduCVO();
////      //swon.setWondu_n(wondu_n);
////      //System.out.println(swon.getWondu_n()+"1");
		//vo.setWondu_n(wondu_n);
//     vo.setWondu_c(vo.getWondu_c());
//      vo.setPrice(vo.getPrice());
//      vo.setImg(vo.getImg());
		DAOMybatis dao = new DAOMybatis();
		List<wonduCVO> list = dao.WonduSearchlist(wondu_n);
////      //Gson API
		Gson g = new Gson();
////      //System.out.println(vo.getWondu_c()+"2");
		String bList = g.toJson(list);// {( ),( ),( )}
////      //System.out.println("test" + bList);
////      System.out.println(bList);
//      session.setAttribute("wonduCVO", list);
		PrintWriter out = response.getWriter();
		//System.out.println(vo.getWondu_c());
		//System.out.println(vo.getPrice());
		System.out.println(list.get(0).getWondu_n());
     
		out.println(bList);

		return null;
//	   String wondu_n=request.getParameter("searchlist"); 
//	   System.out.println(wondu_n+"힘들어 들어와줘 ㅜㅜ");
//	      
//	      DAOMybatis dao=new DAOMybatis();
//	      try {
//	         List<wonduCVO> list=dao.WonduSearchlist(wondu_n);   
//	          //request.setAttribute("list", list);
//	          Gson g = new Gson();
//	          String bList= g.toJson(list);
//	          PrintWriter out = response.getWriter();
//	          out.println(bList);
//	          response.setContentType("text/json; charset=ecu-kr");      
//	          System.out.println(wondu_n+"힘들어 들어와줘 ㅜㅜ!");
//	      } catch (Exception e) {         
//	         e.printStackTrace();
//	      }   
//	      return "searchoutput";
	}
}
