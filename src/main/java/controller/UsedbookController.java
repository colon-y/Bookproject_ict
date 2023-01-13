package controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.UsedbookDao;
import vo.BookVo;

@Controller
@RequestMapping("/usedbook/")
public class UsedbookController {

	@Autowired
	ServletContext application;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	UsedbookDao usedbook_dao;

	public UsedbookController(UsedbookDao usedbook_dao) {
		super();
		this.usedbook_dao = usedbook_dao;
	}
	
	@RequestMapping("list.do")
	public String list(){
		
		return "";
	}
	
	@RequestMapping("search_list.do")
	public String map() {
		
		return "";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "book/book_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(BookVo vo) {
		
		String web_path = "/resources/upload/";
		String abs_path = application.getRealPath(web_path);
		
		return "";
	}
	
}
