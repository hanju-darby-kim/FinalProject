package com.test.spring.teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherService implements ITeacherService{

	@Autowired
	private TeacherDAO dao;
}
