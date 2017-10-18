package com.shubham.service;

import java.util.List;

import com.shubham.model.Location;

public interface LocationService {
	public void add(Location Location);
	public List<Location> getAllLocation();
}
