package controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ReviewDao;
import vo.ReviewVo;

@Controller
@RequestMapping("/review/")
public class ReviewController {

	@Autowired
	ServletContext application;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	ReviewDao review_dao;

	public ReviewController(ReviewDao review_dao) {
		super();
		this.review_dao = review_dao;
	}
	
	@RequestMapping("list.do")
	public String list() {
		
		return "";
	}
	
	@RequestMapping("view.do")
	public String view(int r_idx, Model model) {
		
		ReviewVo vo = review_dao.selectOne(r_idx);
		
		if(session.getAttribute("show")==null) {
			
			int res = review_dao.update_readhit(r_idx);
			
			session.setAttribute("show", true);
		}
		
		model.addAttribute("vo", vo);
		
		return "review/review_view";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "review/review_list";
	}
	
	@RequestMapping("insert.do")
	public String insert(ReviewVo vo, Model model) {
		
		if(session.getAttribute("user")==null) {
			
			model.addAttribute("reason", "session_timeout");
			
			return "redirect:../member/login_form.do";
		}
		
		String r_ip = request.getRemoteAddr();
		vo.setR_ip(r_ip);
		
		int res = review_dao.insert(vo);
		
		return "redirect";
		
	}
	
	@RequestMapping("delete.do")
	public String delete() {
		
		return "redirect:list.do";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int r_idx, Model model) {
		
		return "review/review_modify_form";
	}
	
	@RequestMapping("modify.do")
	public String modify(ReviewVo vo, Model model) {
		
		
		
		return "redirect:review/view.do";
	}
	
}
