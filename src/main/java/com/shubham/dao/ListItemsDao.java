package com.shubham.dao;

import java.util.List;

import com.shubham.model.ListItems;

public interface ListItemsDao {
	public void add(ListItems ListItems);
	public List<ListItems> getItemsByListId(int id);
	public List<ListItems> getAllListItems();
	public void deleteItemsByListId(int updateid);
}
