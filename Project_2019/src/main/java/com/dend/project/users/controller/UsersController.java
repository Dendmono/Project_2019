package com.dend.project.users.controller;

import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dend.project.users.service.UsersService;
import com.dend.project.users.dto.UsersDto;


@Controller
public class UsersController {
	
	//의존 객체(DI)
	@Autowired
	private UsersService service; 
	
	// 회원가입 폼 요청 처리
	@RequestMapping("/signupform.do")
	public String home(HttpServletRequest request){	

		return "signupform";
	}
	
	//아이디 중복확인 AJAX 요청 처리
	@RequestMapping("/checkid")
	@ResponseBody
	public Map<String, Object> 
		checkid(@RequestParam String inputId){
		//서비스를 통해서 리턴받은 값을 리턴해 준다. 
		return service.canUseId(inputId);
	}
	
	//회원 가입 요청처리
	@RequestMapping(value="/signup", 
			method=RequestMethod.POST)
	public ModelAndView signup(ModelAndView mView,
			@ModelAttribute UsersDto dto){
		//dto 에는 폼 전송된 내용이 들어 있다.
		//UsersService 를 이용해서 회원 가입 처리 하고
		service.addUser(mView, dto);
		//view page 정보를 ModelAndView 객체에 담아서 
		mView.setViewName("greeting");
		//응답하기 
		return mView;
	}
	
	//로그인 폼 요청 처리
	@RequestMapping("/loginform")
	public String loginform(HttpServletRequest request){
		String url=request.getParameter("url");
		if(url == null){//목적지 정보가 없으면
			String cPath=request.getContextPath();
			url=cPath+"/"; //인덱스 페이지로 갈수 있도록 
		}
		// request 영역에 view page 에 전달할 모델을 담고
		request.setAttribute("url", url);		
		
		return "loginform";
	}
	
	//로그인 요청 처리
	@RequestMapping(value="/login",
			method=RequestMethod.POST)
	public ModelAndView login(ModelAndView mView,
			@ModelAttribute UsersDto dto,
			HttpSession session,
			HttpServletRequest request){
		//UsersService 를 이용해서 로그인 관련 비즈니스
		//로직 처리 
		service.validUser(mView, dto, session);
		//월래 가려던 url 정보를 request 에 담는다.
		String encodedUrl=
			URLEncoder.encode(request.getParameter("url"));
		request.setAttribute("encodedUrl", encodedUrl);
		
		mView.setViewName("login");
		return mView;
	}
	
	// 개인 정보 페이지
	@RequestMapping("/private/personal")
	public String personal(HttpServletRequest request){

		
		return "private/personal";
	}
	
}















