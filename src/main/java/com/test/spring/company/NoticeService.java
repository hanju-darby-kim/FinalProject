package com.test.spring.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.TestTypeDTO;

@Service
public class NoticeService implements INoticeService {

	@Autowired
	private NoticeDAO dao;
	
	/**
	 * 회사 소개를 얻어오는 메소드
	 */
	@Override
	public String getContent(String seq) {
		return dao.getContent(seq);
	}
	
	
	@Override
	public List<TestTypeDTO> getTestType() {
		return dao.getTestType();
	}

	@Override
	public List<HireTypeDTO> getHireType() {
		return dao.getHireType();
	}

	@Override
	public List<CareerTypeDTO> getCareerType() {
		return dao.getCareerType();
	}

	/**
	 * 공고 db 저장
	 */
	@Override
	public int addNoticeOk(String seq) {
		return 0;
	}


	@Override
	public List<AreaTypeDTO> getAreaType() {
		return dao.getAreaType();
	}

	
	
}
