package com.test.spring.hyunjin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.ConsulteeTypeDTO;


@Service
public class ConsultService implements IConsultService {
	
	@Autowired
	private ConsultDAO dao;
	
	@Override
	public List<ConsulteeTypeDTO> ConsulteeType() {
		
		return dao.ConsulteeType();
	}

	/*@Override
	public List<ConsulteeTypeDTO> ConsulteeType() {
		// TODO Auto-generated method stub
		return null;
	}*/
	
	/*@Override
	public int addCategory(String categoryname) {
		
		return dao.addCategory(categoryname);
	}
	*/
}
