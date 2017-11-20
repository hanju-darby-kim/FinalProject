package com.test.spring.hyunjin;


import java.util.List;

import com.test.spring.dto.ConsulteeTypeDTO;
//import com.test.spring.dto.ConsultingBookingDTO;
import com.test.spring.dto.CurTypeDTO;

public interface IConsultService {
	   
	

	List<ConsulteeTypeDTO> consulteeType();

	List<CurTypeDTO> curType();
	
	//int booking(ConsultingBookingDTO dto);
	
}
