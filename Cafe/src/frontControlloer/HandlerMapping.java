package frontControlloer;

import java.util.HashMap;

import web.AjaxBoardUpdateController;
import web.AjaxCoffeeController;
import web.AjaxGoodController;
import web.AjaxLoginController;
import web.AjaxLogoutController;
import web.AjaxWonduGoodController;
import web.AjaxWonduListController;
import web.AjaxWonduSearchListController;
import web.Controller;


public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/ajaxlogin.do", new AjaxLoginController());
		mappings.put("/ajaxlogout.do", new AjaxLogoutController());
		mappings.put("/recocoffee.do", new AjaxCoffeeController());
		mappings.put("/ajaxupdate.do", new AjaxBoardUpdateController());

		mappings.put("/ajaxwondugood.do", new AjaxWonduGoodController());
		mappings.put("/good.do", new AjaxGoodController());
		mappings.put("/wondulist.do", new AjaxWonduListController());
		mappings.put("/wondusearchlist.do", new AjaxWonduSearchListController());
		

		// 새로운 요청을 추가하고 -> POJO를 새롭게 만든다.
		// mappings.put("
	}
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
