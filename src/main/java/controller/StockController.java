package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.StockService;

@Controller
@RequestMapping("/stock/")
public class StockController {

	StockService stock_service;
	
	public StockController(StockService stock_service) {
		super();
		this.stock_service = stock_service;
	}



	
}
