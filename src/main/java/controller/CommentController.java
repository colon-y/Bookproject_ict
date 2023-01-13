package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.CommentDao;

@Controller
@RequestMapping("/comment/")
public class CommentController {

	CommentDao comment_dao;

	public CommentController(CommentDao comment_dao) {
		super();
		this.comment_dao = comment_dao;
	}

}
