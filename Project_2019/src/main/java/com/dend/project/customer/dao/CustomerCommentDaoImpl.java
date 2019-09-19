package com.dend.project.customer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dend.project.customer.dto.CustomerCommentDto;

@Repository
public class CustomerCommentDaoImpl implements CustomerCommentDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<CustomerCommentDto> getList(int ref_group) {
		
		return session
				.selectList("customerComment.getList",ref_group);
	}

	@Override
	public void delete(int num) {
		session.update("customerComment.delete", num);
	}

	@Override
	public void insert(CustomerCommentDto dto) {
		session.insert("customerComment.insert", dto);
	}

	@Override
	public int getSequence() {
		// TODO Auto-generated method stub
		return session.selectOne("customerComment.getSequence");
	}

	@Override
	public void update(CustomerCommentDto dto) {
		session.update("customerComment.update", dto);
	}

}
