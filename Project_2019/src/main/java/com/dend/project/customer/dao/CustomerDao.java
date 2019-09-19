package com.dend.project.customer.dao;

import java.util.List;

import com.dend.project.customer.dto.CustomerDto;

public interface CustomerDao {
	//글의 갯수 
	public int getCount(CustomerDto dto);
	//글의 목록
	public List<CustomerDto> getList(CustomerDto dto);
	//글 추가 
	public void insert(CustomerDto dto);
	//글 정보 얻어오기 
	public CustomerDto getData(CustomerDto dto);
	//조회수 증가 시키기 
	public void addViewCount(int num);
	//글 삭제 
	public void delete(int num);
	//글 하나의 정보 
	public CustomerDto getData(int num);
	//글 수정 
	public void update(CustomerDto dto);
}








