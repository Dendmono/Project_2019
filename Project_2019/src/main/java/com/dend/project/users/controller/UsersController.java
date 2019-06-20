package com.dend.project.users.controller;



import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UsersController {
	
	// 회원가입폼
	@RequestMapping("/signupform.do")
	public String home(HttpServletRequest request){	

		return "signupform";
	}
	
}
