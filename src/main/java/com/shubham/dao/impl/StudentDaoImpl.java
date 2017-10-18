package com.shubham.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shubham.dao.StudentDao;
import com.shubham.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Student student) {
		session.getCurrentSession().save(student);
	}

	@Override
	public void edit(Student student) {
		session.getCurrentSession().update(student);
	}

	@Override
	public void delete(int studentId) {		
		session.getCurrentSession().delete(getStudent(studentId));
	}

	@Override
	public Student getStudent(int studentId) {
		return (Student)session.getCurrentSession().get(Student.class, studentId);
	}

	@Override
	public List getAllStudent() {
		return session.getCurrentSession().createQuery("from Student").list();
	}

	@Override
	@Transactional
	public Student login(String loginemail, String logoinpassword) {
		
		Query query = session.getCurrentSession().createQuery("from Student where email='"+loginemail+"' AND passcode='"+logoinpassword+"'");
		System.out.println(query);
		return (Student) query.uniqueResult();
	}

}
