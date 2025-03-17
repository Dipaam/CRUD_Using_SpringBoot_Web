package com.dipam.springDemoWeb1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dipam.springDemoWeb1.model.Student;
import com.dipam.springDemoWeb1.repo.StudentRepo;

@Service
public class StudentService {
	
	private StudentRepo repo;

	public StudentRepo getRepo() {
		return repo;
	}

	@Autowired
	public void setRepo(StudentRepo repo) {
		this.repo = repo;
	}

	public void addStudent(Student s) {
		if(repo.findById(s.getRoll())!=null) {
			repo.save(s);
		}
	}
	public List<Student> getAll() {
		return repo.findAll();
	}
	public boolean updateStudent(Student s) {
		if(repo.existsById(s.getRoll())) {
			repo.save(s);
			return true;
		}
		else {
			return false;
		}
	}
	@SuppressWarnings("deprecation")
	public boolean deleteStudent(int n) {
		if(repo.existsById(n)) {
			repo.deleteById(n);
			return true;
		}else {
			return false;
		}
	}
}
