package controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.BookDao;
import vo.BookVo;

@Controller
@RequestMapping("/book/")
public class BookController {

	@Autowired
	ServletContext application;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	BookDao book_dao;

	public BookController(BookDao book_dao) {
		super();
		this.book_dao = book_dao;
	}
	
	@RequestMapping("list.do")
	public String list(BookVo vo, Model model){
		
		List<BookVo> list = book_dao.selectList();
		
		model.addAttribute("vo", vo);
		
		return "book/book_list";
	}
	
	@RequestMapping("search_list.do")
	public String map(String category, 
			          @RequestParam(value="search", required = false, defaultValue = "all") String search,
			          @RequestParam(value="search_text", required=false) String search_text,
			          Model model){
		
		Map map = new HashMap();
		
		if(!search.equals("all")){
			
			if(search.equals("b_name_b_content_l_b_author_b_publisher")) {
			
				map.put("b_name", search_text);
				map.put("b_content_l", search_text);
				map.put("b_author", search_text);
				map.put("b_publisher", search_text);
				
			}else if(search.equals("b_name")) {
				
				map.put("b_name", search_text);
				
			}else if(search.equals("b_content_l")) {
				
				map.put("b_content_l", search_text);
				
			}else if(search.equals("b_author")) {
				
				map.put("b_author", search_text);
				
			}else if(search.equals("b_publisher")) {
				
				map.put("b_publisher", search_text);
				
			}
			
		}
			
		List<BookVo> list = book_dao.selectList(map);
		
		model.addAttribute("list", list);
		
		return "book/book_search_list";
	}
	
	@RequestMapping("manage_list.do")
	public String list(Model model) {
		
		List<BookVo> list = book_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "book/book_manage_list";
	}
	
	@RequestMapping("manage_view.do")
	public String view(int b_idx, Model model) {
		
		BookVo vo = book_dao.selectOne(b_idx);
		
		model.addAttribute("vo", vo);
		
		return "book/book_manage_view";
	}
	
	
	@RequestMapping("insert_form.do")
	public String insert_form() {
		
		return "book/book_insert_form";
	}
	
	@RequestMapping("insert.do")
	public String insert(BookVo vo, 
			             @RequestParam MultipartFile book, Model model) {
		
		String web_path = "/resources/upload/";
		String abs_path = application.getRealPath(web_path);
		
		String filename = book.getOriginalFilename();
		
		File f = new File(abs_path, filename);
		
		if(f.exists()) {
			
			long time = System.currentTimeMillis();
			
		}
		
				
		return "";
	}
	
	@RequestMapping("modify_form.do")
	public String modify_form(int b_idx, Model model) {
		
		BookVo vo = book_dao.selectOne(b_idx);
		
		String b_content_l = vo.getB_content_l().replaceAll("<br>", "\r\n");
		vo.setB_content_l(b_content_l);
		
		model.addAttribute("vo", vo);
		
		return "book/book_modify_form";
	}
	
	@RequestMapping("modify.do")
	public String modify(BookVo vo, Model model) {
		
		int res = book_dao.update(vo);
		
		model.addAttribute("b_idx", vo.getB_idx());
		
		return "redirect:book_manage_view.do";
	}
	

	
	/*
	 * @RequestMapping("stop.do")
	 * 
	 * @RequestMapping("clear.do")
	 * 
	 * @RequestMapping("review.do")
	 * 
	 * @RequestMapping("ranking.do")
	 * 
	 * @RequestMapping("notice.do")
	 */
	
	
}
