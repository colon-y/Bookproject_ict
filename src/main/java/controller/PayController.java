package controller;

import org.springframework.stereotype.Controller;

import dao.PayDao;

@Controller
public class PayController {
	
	PayDao pay_dao;

	public PayController(PayDao pay_dao) {
		super();
		this.pay_dao = pay_dao;
	}
	
	

}
