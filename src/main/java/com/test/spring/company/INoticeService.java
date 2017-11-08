package com.test.spring.company;

import java.util.List;

import com.test.spring.dto.TestTypeDTO;

public interface INoticeService {
	String getContent(String seq);
	int addNoticeOk(String seq);
	List<TestTypeDTO> getTestType();
}
