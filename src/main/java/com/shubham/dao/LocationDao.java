package com.shubham.dao;

import java.util.List;

import com.shubham.model.Location;

public interface LocationDao {
	public void add(Location student);
	public Location getLocation(int id);
	public List<Location> getAllLocation();
}
