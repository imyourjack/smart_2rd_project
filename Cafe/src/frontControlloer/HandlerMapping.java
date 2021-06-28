package frontControlloer;

import java.util.HashMap;

import web.AjaxBoardContentController;
import web.AjaxBoardDeleteController;
import web.AjaxBoardRegisterController;
import web.AjaxBoardUpdateController;
import web.AjaxBoardlistController;
import web.AjaxCoffeeController;
import web.AjaxGoodController;
//github.com/2021-SMHRD-KDT-Bigdata-4/coffee.git
import web.AjaxLoginController;
import web.AjaxLogoutController;
import web.AjaxWonduGoodController;
import web.AjaxWonduListController;
import web.AjaxWonduSearchListController;
import web.BoardDeleteController;
//github.com/2021-SMHRD-KDT-Bigdata-4/coffee.git
import web.Controller;


public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/recocoffee.do", new AjaxCoffeeController());
		mappings.put("/ajaxlogin.do", new AjaxLoginController());
		mappings.put("/ajaxlogout.do", new AjaxLogoutController());
		mappings.put("/ajaxupdate.do", new AjaxBoardUpdateController());
//		mappings.put("/ajaxsearch.do", new AjaxSearchController());
		mappings.put("/ajaxlist.do", new AjaxBoardlistController());
		mappings.put("/ajaxcontent.do", new AjaxBoardContentController());
		
		mappings.put("/ajaxregister.do", new AjaxBoardRegisterController());
		mappings.put("/ajaxdelete.do", new AjaxBoardDeleteController());
		mappings.put("/delete.do", new BoardDeleteController());

		mappings.put("/ajaxwondugood.do", new AjaxWonduGoodController());
		mappings.put("/good.do", new AjaxGoodController());
		mappings.put("/wondusearchlist.do", new AjaxWonduSearchListController());
		mappings.put("/wondulist.do", new AjaxWonduListController());

		// 새로운 요청을 추가하고 -> POJO를 새롭게 만든다.
		// mappings.put("
	}
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
