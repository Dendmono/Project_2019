package com.dend.project.customer.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.dend.project.customer.dto.CustomerCommentDto;
import com.dend.project.customer.dto.CustomerDto;

public interface CustomerService {
	public void getList(HttpServletRequest request);
	public void saveContent(CustomerDto dto);
	public void getDetail(HttpServletRequest request);
	public void saveComment(HttpServletRequest request);
	public void updateComment(CustomerCommentDto dto);
	public void deleteComment(int num);
	//원글 삭제 하는 메소드 
	public void deleteContent(int num);
	//원글 수정폼 출력에 필요한 메소드 
	public void getUpdateData(ModelAndView mView, int num);
	//원글 수정하는 메소드 
	public void updateContent(CustomerDto dto);
}












