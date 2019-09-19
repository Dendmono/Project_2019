package com.dend.project.customer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dend.project.customer.dto.CustomerDto;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int getCount(CustomerDto dto) {
		// TODO Auto-generated method stub
		return session.selectOne("customer.getCount", dto);
	}

	@Override
	public List<CustomerDto> getList(CustomerDto dto) {
		// TODO Auto-generated method stub
		return session.selectList("customer.getList", dto);
	}

	@Override
	public void insert(CustomerDto dto) {
		session.insert("customer.insert", dto);
	}

	@Override
	public CustomerDto getData(CustomerDto dto) {
		// TODO Auto-generated method stub
		return session.selectOne("customer.getData", dto);
	}

	@Override
	public void addViewCount(int num) {
		session.update("customer.addViewCount", num);
	}

	@Override
	public void delete(int num) {
		session.delete("customer.delete", num);
	}

	@Override
	public CustomerDto getData(int num) {
		// TODO Auto-generated method stub
		return session.selectOne("customer.getData2", num);
	}

	@Override
	public void update(CustomerDto dto) {
		session.update("customer.update", dto);
	}

}






