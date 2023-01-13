package controller;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.MainService;

@Controller
public class MainController {
	
	MainService main_service;

	public void setMain_service(MainService main_service) {
		this.main_service = main_service;
	}
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		
		Map map = main_service.selectList();
		
		model.addAttribute("map", map);
		
		return "main/main";
	}
	
}
