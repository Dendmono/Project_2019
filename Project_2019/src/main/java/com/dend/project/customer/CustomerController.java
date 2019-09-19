package com.dend.project.customer;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dend.project.customer.dto.CustomerDto;
import com.dend.project.customer.service.CustomerService;
import com.dend.project.customer.dto.CustomerCommentDto;
import com.dend.project.customer.dto.CustomerDto;



@Controller
public class CustomerController {
	
	//의존객체
	@Autowired
	private CustomerService service;
	
	
	//글목록 요청처리
	@RequestMapping("/customer/board")
	public ModelAndView list(HttpServletRequest request){
		// HttpServletRequest 객체를 서비스에 넘겨 주면서
		// 비즈니스 로직을 수행하고 
		service.getList(request);
		
		// view page 로 forward 이동해서 글 목록 출력하기 
		return new ModelAndView("customer/board");
	}
	
	//새글 추가 폼 요청 처리
	@RequestMapping("/customer/insertform")
	public ModelAndView authInsertform
			(HttpServletRequest request){
		
		return new ModelAndView("customer/insertform");
	}
	
	//새글 추가 요청 처리
	@RequestMapping(value="/customer/insert",
			method=RequestMethod.POST)
	public ModelAndView authInsert(HttpServletRequest request,
			@ModelAttribute CustomerDto dto){
		//세션에 있는 글작성자의 아이디
		String writer=(String)
				request.getSession().getAttribute("id");
		//CafeDto 객체에 담고 
		dto.setWriter(writer);
		//서비스를 이용해서 DB 에 저장
		service.saveContent(dto);
		//글 목록 보기로 리다일렉트 이동 
		return new ModelAndView("redirect:/customer/board.do");
	}
	
	//글 자세히 보기 요청 처리
	@RequestMapping("/customer/detail")
	public String detail(HttpServletRequest request){
		service.getDetail(request);
		//view page 로 forward 이동해서 글 자세히 보기 
		return "customer/detail";
	}
	
	//댓글 추가 요청 처리
	@RequestMapping(value="/customer/comment_insert",
			method=RequestMethod.POST)
	public ModelAndView authCommentInsert(HttpServletRequest request,
			@RequestParam int ref_group){
		//서비스를 통해서 댓글을 추가 한다. 
		service.saveComment(request);
		// ref_group 은 원글의 글번호 이다.
		return new ModelAndView
				("redirect:/customer/detail.do?num="+ref_group);
	}
	@RequestMapping(value="/customer/comment_update",
			method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> authCommentUpdate(HttpServletRequest request,
			@ModelAttribute CustomerCommentDto dto){
		//서비스를 이용해서 댓글을 수정저장한다.
		service.updateComment(dto);
		// {"isSuccess":true} 형식의 json 문자열이 출력되도록
		// Map 객체를 리턴해 준다. 
		Map<String, Object> map=new HashMap<>();
		map.put("isSuccess", true);
		return map;
	}
	
	//댓글 삭제 요청 처리
	@RequestMapping(value="/customer/comment_delete",
			method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> 
		authCommentDelete(HttpServletRequest request,
		@RequestParam int num){
		
		//서비스를 이용해서 댓글 삭제후
		service.deleteComment(num);
		//json 응답
		Map<String, Object> map=new HashMap<>();
		map.put("isSuccess", true);
		return map;
	}
	
	@RequestMapping("/customer/updateform")
	public ModelAndView 
		authUpdateform(HttpServletRequest request, 
			@RequestParam int num,
			ModelAndView mView){
		//서비스를 이용해서 수정할 글정보를 ModelAndView
		//객체에 담고
		service.getUpdateData(mView, num);
		//view page 로 forward 이동해서 수정폼 출력
		mView.setViewName("customer/updateform");
		return mView;
	}
	
	//원글 수정 반영 요청 처리
	@RequestMapping(value="/customer/update",
			method=RequestMethod.POST)
	public ModelAndView 
		authUpdate(HttpServletRequest request,
				@ModelAttribute CustomerDto dto){
		//서비스를 이용해서 수정 반영한다.
		service.updateContent(dto);
		
		//글 자세히 보기로 리다일렉트 이동 
		return new ModelAndView
			("redirect:/customer/detail.do?num="+dto.getNum());
	}
	
	//원글 삭제 요청 처리
	@RequestMapping("/customer/delete")
	public ModelAndView 
		authDelete(HttpServletRequest request,
				@RequestParam int num){
		//서비스를 이용해서 글을 삭제하기 
		service.deleteContent(num);
		//글 목록 보기로 리다일렉트 이동 
		return new ModelAndView("redirect:/customer/board.do");
	}
	
}



















