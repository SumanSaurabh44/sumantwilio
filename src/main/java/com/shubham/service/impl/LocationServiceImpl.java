package com.shubham.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.LocationDao;
import com.shubham.model.Location;
import com.shubham.service.LocationService;

@Service
public class LocationServiceImpl implements LocationService {
//	@Autowired
//	private SmsServiceUserService smsServiceUserService;
	
	@Autowired
	private LocationDao LocationDao;
	

	@Transactional
	public void add(Location Location) {
		LocationDao.add(Location);
		
	}

	@Override
	public List<Location> getAllLocation() {
		return LocationDao.getAllLocation();
	}

}
