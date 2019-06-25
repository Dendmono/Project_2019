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
	
	@RequestMapping("/private/info.do")
	public String info(HttpServletRequest request){	

		return "private/info";
	}
	
}
