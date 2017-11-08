package com.test.spring.company;

import java.util.List;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.TestTypeDTO;

public interface INoticeService {
	String getContent(String seq);
	int addNoticeOk(String seq);
	List<TestTypeDTO> getTestType();
	List<HireTypeDTO> getHireType();
	List<CareerTypeDTO> getCareerType();
	List<AreaTypeDTO> getAreaType();
}
