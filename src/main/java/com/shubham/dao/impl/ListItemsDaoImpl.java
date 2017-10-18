package com.shubham.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.ListItemsDao;
import com.shubham.model.ListItems;

@Repository
public class ListItemsDaoImpl implements ListItemsDao {
	@Autowired
	private SessionFactory session;


	@Override
	public void add(ListItems ListItems) {
		session.getCurrentSession().save(ListItems);
	}


	@Transactional
	public List<ListItems> getItemsByListId(int id) {
		Query query = session.getCurrentSession().createQuery("from ListItems where listid="+id+" order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<ListItems> ListItems = query.list();
		
		return ListItems;
	}

	@Transactional
	public List<ListItems> getAllListItems() {
		Query query = session.getCurrentSession().createQuery("from ListItems order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<ListItems> ListItems = query.list();
		
		return ListItems;
	}


	@Transactional
	public void deleteItemsByListId(int updateid) {
		Query query = session.getCurrentSession().createQuery("delete ListItems where listid = "+updateid);
		query.executeUpdate();
	}

}
