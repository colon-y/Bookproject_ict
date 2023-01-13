package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.NoticeDao;
import vo.NoticeVo;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

	NoticeDao notice_dao;

	public NoticeController(NoticeDao notice_dao) {
		super();
		this.notice_dao = notice_dao;
	}
	
	@RequestMapping("list.do")
	public String list(Model model){
	
		List<NoticeVo> list = notice_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "notice/notice_list";
	}
	
	@RequestMapping("view.do")
	public String view(int n_idx, Model model) {
		
		NoticeVo vo = notice_dao.selectOne(n_idx);
		
		model.addAttribute("vo", vo);
		
		return "notice/notice_view";
	}
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "notice/notice_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(NoticeVo vo) {

		int res = notice_dao.insert(vo);
		
		return "redirect:../notice_list.do";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int n_idx, Model model) {
		
		NoticeVo vo = notice_dao.selectOne(n_idx);
		
		model.addAttribute("vo", vo);
		
		return "notice/notice_modify_form";
		
	}
	
	@RequestMapping("modify.do")
	public String modify(NoticeVo vo) {
		
		int res = notice_dao.update(vo);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int n_idx) {
	
		int res = notice_dao.delete(n_idx);
	
		return "redirect:list.do";
	}
}
