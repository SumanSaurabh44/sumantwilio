package com.shubham.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SmsServiceUser {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	private int id;
	
	@Column
	private String name;
	
	@Column
	private String phone;
	
	@Column
	private String dateOn;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDateOn() {
		return dateOn;
	}

	public void setDateOn(String dateOn) {
		this.dateOn = dateOn;
	}

	public String getTimeOn() {
		return timeOn;
	}

	public void setTimeOn(String timeOn) {
		this.timeOn = timeOn;
	}

	@Column
	private String timeOn;


	
}
