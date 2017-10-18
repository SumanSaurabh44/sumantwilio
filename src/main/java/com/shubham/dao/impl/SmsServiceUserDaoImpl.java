package com.shubham.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.SmsServiceUserDao;
import com.shubham.model.SmsServiceUser;
import com.shubham.model.Student;

@Repository
public class SmsServiceUserDaoImpl implements SmsServiceUserDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(SmsServiceUser user) {
		session.getCurrentSession().save(user);
	}

	@Override
	public void edit(SmsServiceUser user) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public List<SmsServiceUser> getAllUsers() {
		Query query = session.getCurrentSession().createQuery("from SmsServiceUser order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<SmsServiceUser> user = query.list();
		
		return user;
	}
	

}
