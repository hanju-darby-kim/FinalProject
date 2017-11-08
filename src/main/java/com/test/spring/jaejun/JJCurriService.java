package com.test.spring.jaejun;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.CurTypeDTO;

@Service
public class JJCurriService implements IJJCurriService {
	
	@Autowired
	private JJCurriDAO dao;
	
	@Override
	public List<CurTypeDTO> curType() {
		System.out.println("여기까지?");
		return dao.curType();
	}
	
}
