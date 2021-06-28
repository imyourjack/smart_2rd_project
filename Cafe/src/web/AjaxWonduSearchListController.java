package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.DAOMybatis;
import model.wonduCVO;

public class AjaxWonduSearchListController implements Controller {

   @Override
   public String requestHandler(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      String wondu_n = request.getParameter("wondu_n");
      
      System.out.println("wondu_n");
      
      wonduCVO swon = new wonduCVO();
      swon.setWondu_n(wondu_n);
      System.out.println(swon.getWondu_n()+"1");
      DAOMybatis dao = new DAOMybatis();
      List<wonduCVO> searchlist = dao.WonduSearchlist(swon);
      //Gson API
      Gson g = new Gson();
      System.out.println(swon.getWondu_c()+"2");
      String bList= g.toJson(searchlist);// {(    ),(     ),(     )}
      //System.out.println("test" + bList);
      System.out.println(bList);
      response.setContentType("text/json; charset=euc-kr");
      PrintWriter out = response.getWriter();
      System.out.println(swon.getWondu_c());
      System.out.println(swon.getPrice());
      System.out.println(swon.getWondu_n());
      
      out.println(bList);
      
      
      return null;
}
         
   }

