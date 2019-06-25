package com.dend.project.main.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	@RequestMapping("/private/main.do")
	public String home(HttpServletRequest request){	

		return "private/main";
	}
	
}
