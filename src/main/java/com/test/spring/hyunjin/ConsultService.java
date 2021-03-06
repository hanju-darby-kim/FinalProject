package com.test.spring.hyunjin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.ConsulteeTypeDTO;
import com.test.spring.dto.ConsultingBookingDTO;
import com.test.spring.dto.CurTypeDTO;


@Service
public class ConsultService implements IConsultService {
	
	@Autowired
	private ConsultDAO dao;
	
	@Override
	public List<ConsulteeTypeDTO> consulteeType() {
		
		return dao.consulteeType();
	}

		
	@Override
	public List<CurTypeDTO> curType() {
		// TODO Auto-generated method stub
		return dao.curType();
	}


	@Override
	public int booking(ConsultingBookingDTO dto) {
		// TODO Auto-generated method stub
		return dao.booking(dto);
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
