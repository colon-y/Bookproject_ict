package controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MemberDao;
import vo.MemberVo;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	ServletContext application;

	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	MemberDao member_dao;

	public MemberController(MemberDao member_dao) {
		super();
		this.member_dao = member_dao;
	}
	
	@RequestMapping("list.do")
	public String list(Model model) {
		
		List<MemberVo> list = member_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "member/member_list";
	}
	
	@RequestMapping("view.do")
	public String view(int m_idx, Model model) {
		
		MemberVo vo = member_dao.selectOne(m_idx);
		
		model.addAttribute("vo", vo);
		
		return "member/member_view";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_from() {
		
		return "member/member_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(MemberVo vo) {
		
		String ip = request.getRemoteAddr();
		
		vo.setM_ip(ip);
		vo.setM_grade("일반");
		
		int res = member_dao.insert(vo);
		
		return "redirect:../member/member_list";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int idx, Model model) {
		MemberVo vo = member_dao.selectOne(idx);
		
		model.addAttribute("vo", vo);
		
		return "member/member_modify_form";
	}
	
	@RequestMapping("modify.do")
	public String modify(MemberVo vo) {
		
		String m_ip = request.getRemoteAddr();
		
		vo.setM_ip(m_ip);
		
		int res = member_dao.update(vo);
		
		return "redirect:";
	}
	
	@RequestMapping("login_form.do")
	public String login_form() {
		
		return "member/member_login_form";
	}
	
	@RequestMapping("login.do")
	public String login(String m_id, String m_pwd, 
			            @RequestParam(value="url", required=false, defaultValue = "no_url") String url,
			            Model model) {
		
		MemberVo user = member_dao.selectOne(m_id);
		
		if(user==null) {
			model.addAttribute("reason", "fail_id");
			return "redirect:login_form.do?";
		}
		
		if(user.getM_pwd().equals(m_pwd)==false) {
			model.addAttribute("reason", "fail_pwd");
			model.addAttribute("m_id", m_id);
			return "redirect:login_form.do?";
		}
		
		session.setAttribute("user", user);
		
		if(url.equals("no_url")) {
			return "redirect:../main.do";
		}
		
		return "redirect:" + url;
	}
	
	@RequestMapping("logout.do")
	public String logout() {
	
		session.removeAttribute("user");
	
		return "redirect:../book/main.do";
	}
	
	@RequestMapping("resign.do")
	public String resign(int m_idx, MemberVo vo) {
		
		String m_ip = request.getRemoteAddr();
		
		vo.setM_ip(m_ip);
		
		int res = member_dao.update(m_idx);
		
		return "";
	}
	
	@RequestMapping("pwd_check.do")
	public String pwd_check() {
		
		return "member/member_resign.do";
	}
	
	@RequestMapping("/book/main.do")
	public String main() {
		
		return "";
	}
	
	@RequestMapping("main.do")
	public String main(int m_idx) {
		
		MemberVo vo = member_dao.selectOne(m_idx);
		
		
			return "../manage/manage_main";

	}
	
}
