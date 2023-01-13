package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.BookDao;
import dao.CartDao;
import dao.PayDao;
import dao.ReviewDao;
import vo.BookVo;
import vo.CartVo;
import vo.MemberVo;
import vo.PayVo;
import vo.ReviewVo;

public class MainServiceImpl implements MainService {

	BookDao book_dao;
	CartDao cart_dao;
	ReviewDao review_dao;
	PayDao pay_dao;
	

	public MainServiceImpl(BookDao book_dao, CartDao cart_dao, ReviewDao review_dao, PayDao pay_dao) {
		super();
		this.book_dao = book_dao;
		this.cart_dao = cart_dao;
		this.review_dao = review_dao;
		this.pay_dao = pay_dao;
	}

	@Override
	public Map selectList() {
		// TODO Auto-generated method stub
		List<BookVo> book_list = book_dao.list();
		
		List<BookVo> book_search_list = book_dao.search_list();
		
		List<CartVo> cart_list = cart_dao.list();
		
		List<ReviewVo> review_list = review_dao.list();
		
		List<PayVo> book_ranking = pay_dao.list();
		
		Map map = new HashMap();
		map.put("book_list", book_list);
		map.put("book_search_list", book_search_list);
		map.put("cart_list", cart_list);
		map.put("review_list", review_list);
		map.put("book_ranking", book_ranking);
		
		return map;
	}

}
