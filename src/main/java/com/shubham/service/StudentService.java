package com.shubham.service;

import java.util.List;

import com.shubham.model.Student;

public interface StudentService {
	public void add(Student student);
	public void edit(Student student);
	public void delete(int studentId);
	public Student getStudent(int studentId);
	public List getAllStudent();
	public Student login(String loginemail, String logoinpassword);
}
