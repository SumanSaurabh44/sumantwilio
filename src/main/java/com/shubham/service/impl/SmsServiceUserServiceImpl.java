package com.shubham.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.SmsServiceUserDao;
import com.shubham.model.SmsServiceUser;
import com.shubham.service.SmsServiceUserService;

@Service
public class SmsServiceUserServiceImpl implements SmsServiceUserService {
//	@Autowired
//	private SmsServiceUserService smsServiceUserService;
	
	@Autowired
	private SmsServiceUserDao smsServiceUserDao;
	

	@Transactional
	public void add(SmsServiceUser student) {
		smsServiceUserDao.add(student);
		
	}

	@Override
	public void edit(SmsServiceUserService student) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<SmsServiceUser> getAllUsers() {
		return smsServiceUserDao.getAllUsers();
	}

}
