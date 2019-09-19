package com.dend.project.customer.dao;

import java.util.List;

import com.dend.project.customer.dto.CustomerCommentDto;

public interface CustomerCommentDao {
	//댓글 목록 
	public List<CustomerCommentDto> getList(int ref_group);
	//댓글 삭제
	public void delete(int num);
	//댓글 추가 
	public void insert(CustomerCommentDto dto);
	//추가할 댓글의 primary key 값 얻어오기 
	public int getSequence();
	//댓글 수정 
	public void update(CustomerCommentDto dto);
}









