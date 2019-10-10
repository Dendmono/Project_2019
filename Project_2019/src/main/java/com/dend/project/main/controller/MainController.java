package com.dend.project.main.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	@RequestMapping("/private/main.do")
	public String main(HttpServletRequest request){	

		return "private/main";
	}
	
	// 목록 디테일 페이지
	@RequestMapping("/private/details.do")
	public String details(HttpServletRequest request){
		
		return "private/details";
	}
	
}
