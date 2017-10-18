package com.shubham.service;

import java.util.List;

import com.shubham.model.Blog;

public interface BlogService {
	public void add( Blog  Blog);
	public List<Blog> getAllBlog();
}
