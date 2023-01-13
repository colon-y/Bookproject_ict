package controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.CartDao;
import vo.CartVo;
import vo.MemberVo;

@Controller
public class CartController {

	@Autowired
	ServletContext application;
	
	@Autowired
	HttpServletRequest reqest;
	
	@Autowired
	HttpSession session;
	
	CartDao cart_dao;

	public CartController(CartDao cart_dao) {
		super();
		this.cart_dao = cart_dao;
	}
	
	@RequestMapping("/pay/pay_cart_list.do")
	public String list(int m_idx, Model model) {
		
		List<CartVo> list = cart_dao.list(m_idx);
		
		int total_amount = cart_dao.selectTotalAmount(m_idx);
		
		return "pay/pay_cart_list";
	}
	
	@RequestMapping("/pay/cart_insert.do")
	@ResponseBody
	public String insert(int b_idx, int m_idx, CartVo vo) {
		vo.setB_idx(b_idx);
		
		return "";
	}
	
	@RequestMapping("/pay/cart_delete.do")
	public String delete(int c_idx, Model model) {
		
		int res = cart_dao.delete(c_idx);
		
		MemberVo user = (MemberVo) session.getAttribute("user");
		
		model.addAttribute("m_idx", user.getM_idx());
		
		return "redirect:cart_list.do?";
	}
	
}
