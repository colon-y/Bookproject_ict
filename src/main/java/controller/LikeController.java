package controller;

import org.springframework.stereotype.Controller;

import dao.LikeDao;

@Controller
public class LikeController {

	LikeDao like_dao;

	public LikeController(LikeDao like_dao) {
		super();
		this.like_dao = like_dao;
	}
	
	
}
