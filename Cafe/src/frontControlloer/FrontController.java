package frontControlloer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAOMybatis;
import web.Controller;
@WebServlet("*.do")
//frontController 패턴
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
												throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); //한글이 깨지지않게 함
		
		// 1. 클라이언트가 어떤 요청을 했는지 알아보는 것
		// http://127.0.0.1:8081/MVC02/list.do
		String reqUrl = request.getRequestURI();
		//System.out.println(reqUrl);
		String cpath = request.getContextPath(); //  /MVC02
		//System.out.println(cpath);
		
		String command = reqUrl.substring(cpath.length());
		System.out.println(command);
		
		// 2. 요청에 따른 분기작업(if~else if~)
	    DAOMybatis dao = new DAOMybatis();
		Controller controller = null;
		String view = null;
		
		// HandlerMapping(핸들러 맵핑)
		HandlerMapping mappings = new HandlerMapping();
		controller = mappings.getController(command);
		//----------------------------------------------
		view = controller.requestHandler(request, response);
		if(view!=null) {
			if(view.indexOf("redirect:/")!=-1) { //.indexOf : 문자열에 특정 문자가 있는지 확인
				response.sendRedirect(view.split(":/")[1]); // view=redirect://list.do   / 리다이렉트
			}
			else {
				//RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeUrl(view)); // WEB-INF/views/boardList -> boardList
				//rd.forward(request, response); //포워드
			}
		}
	}

}
