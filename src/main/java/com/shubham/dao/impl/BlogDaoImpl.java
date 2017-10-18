package com.shubham.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.BlogDao;
import com.shubham.model.Blog;

@Repository
public class BlogDaoImpl implements BlogDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Blog Blog) {
		session.getCurrentSession().save(Blog);
	}


	@Override
	public List<Blog> getBlogById(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Transactional
	public List<Blog> getAllBlogs() {
		Query query = session.getCurrentSession().createQuery("from Blog order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<Blog> Blog = query.list();
		
		return Blog;
	}

}
