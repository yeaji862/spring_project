package com.springbook.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {

	
	@RequestMapping("/main.do")
	public String mainList(Model model) {
		return "WEB-INF/views/main.jsp";
	}
	
	
}
