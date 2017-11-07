package com.test.spring.jaejun;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JJCurriService implements IJJCurriService {
	
	@Autowired
	private JJCurriDAO dao;
	
	
	
}
