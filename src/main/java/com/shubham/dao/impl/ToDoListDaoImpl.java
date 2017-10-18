package com.shubham.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.ToDoListDao;
import com.shubham.model.ToDoList;

@Repository
public class ToDoListDaoImpl implements ToDoListDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(ToDoList ToDoList) {
		session.getCurrentSession().save(ToDoList);
	}

	@Override
	public ToDoList getToDoList(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<ToDoList> getAllToDoList() {
		Query query = session.getCurrentSession().createQuery("from ToDoList order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<ToDoList> ToDoList = query.list();
		
		return ToDoList;
	}

	@Transactional
	public List<ToDoList> getListById(int listid) {
		Query query = session.getCurrentSession().createQuery("from ToDoList where listid="+listid+" order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<ToDoList> ToDoList = query.list();
		
		return ToDoList;
	}

	@Transactional
	public void deleteToDoListById(int updateid) {
		Query query = session.getCurrentSession().createQuery("delete ToDoList where listid = "+updateid);
		query.executeUpdate();
	}
	

}
