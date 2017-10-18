package com.shubham.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.BlogDao;
import com.shubham.model.Blog;
import com.shubham.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {
//	@Autowired
//	private SmsServiceUserService smsServiceUserService;
	
	@Autowired
	private BlogDao BlogDao;
	

	@Transactional
	public void add(Blog Blog) {
		BlogDao.add(Blog);
	}

	@Override
	public List<Blog> getAllBlog() {
		return BlogDao.getAllBlogs();
	}

}
