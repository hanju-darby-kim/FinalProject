package com.test.spring.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
import com.test.spring.dto.NoticeDTO;
import com.test.spring.dto.TestByNoticeDTO;
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

	@Override
	public List<AreaTypeDTO> getAreaType() {
		return dao.getAreaType();
	}


	@Override
	public List<EducationTypeDTO> getEducationType() {
		return dao.getEducationType();
	}


	@Override
	public List<CertificateTypeDTO> getCertificateType() {
		return dao.getCertificateType();
	}


	@Override
	public List<LangTestTypeDTO> getLangTestType() {
		return dao.getLangTestType();
	}


	@Override
	public List<MajorCategoryDTO> getMajorCategory() {
		return dao.getMajorCategory();
	}
	
	/**
	 * 공고 db 저장
	 */
	@Override
	@Transactional
	public int addNoticeOk(NoticeDTO notice) {
		//면접 기본 정보
		dao.addNotice(notice);
		//방금 넣은 면접 기본 정보의 시퀀스 가져오기
		 notice.setSeq(dao.getMaxNoticeSeq());
		 
		 //면접 전형
		 for(TestByNoticeDTO tbndto : notice.getTestByNotice()) {
			 dao.addTestByNotice(tbndto);
		 }
		 
		 
		 
		 
		return 0;
	}

	
	
}
