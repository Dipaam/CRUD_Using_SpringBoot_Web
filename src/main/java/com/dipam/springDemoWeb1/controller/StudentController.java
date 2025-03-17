package com.dipam.springDemoWeb1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dipam.springDemoWeb1.model.Student;
import com.dipam.springDemoWeb1.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	StudentService ss;

	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}

	@RequestMapping("add")
	public String add(@RequestParam("sRoll") int roll, @RequestParam("sName") String name) {
		Student stu = new Student();
		stu.setRoll(roll);
		stu.setName(name);
		ss.addStudent(stu);
		return "result.jsp";
	}

	@RequestMapping("get")
	public String get(Model m) {
		List<Student> res = ss.getAll();
		m.addAttribute("result", res);
		return "getAll.jsp";
	}

	@RequestMapping("update")
	public String update(@RequestParam("sRoll") int roll, @RequestParam("sName") String name) {
		Student s = new Student();
		s.setRoll(roll);
		s.setName(name);
		if(ss.updateStudent(s)) {
			return "result.jsp";
		}
		else {
			return "fail.jsp";
		}
	}

	@RequestMapping("delete")
	public String delete(@RequestParam("sRoll") int roll) {
		if (ss.deleteStudent(roll)) {
			return "result.jsp";
		} else {
			return "fail.jsp";
		}
	}
}
