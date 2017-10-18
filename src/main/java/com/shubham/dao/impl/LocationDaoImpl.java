package com.shubham.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.LocationDao;
import com.shubham.model.Location;

@Repository
public class LocationDaoImpl implements LocationDao {
	@Autowired
	private SessionFactory session;


	@Override
	public void add(Location Location) {
		session.getCurrentSession().save(Location);
	}

	@Override
	public Location getLocation(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Location> getAllLocation() {
		Query query = session.getCurrentSession().createQuery("from Location order by 1 desc");
		
		@SuppressWarnings("unchecked")
		List<Location> Location = query.list();
		
		return Location;
	}
	

}
