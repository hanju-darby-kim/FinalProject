package com.test.spring.company;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.DemandCertificateDTO;
import com.test.spring.dto.DemandLangTestDTO;
import com.test.spring.dto.DemandMajorDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.FieldDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
import com.test.spring.dto.NoticeDTO;
import com.test.spring.dto.NoticeViewDTO;
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
	public String addNoticeOk(NoticeDTO notice) {
		notice.setConfirm("n");
		//면접 기본 정보
		dao.addNotice(notice);
		//방금 넣은 면접 기본 정보의 시퀀스 가져오기
		 notice.setSeq(dao.getMaxNoticeSeq());
		 
		 //면접 전형
		 for(TestByNoticeDTO tbndto : notice.getTestByNotice()) {
			 tbndto.setNoticeSeq(notice.getSeq());
			 dao.addTestByNotice(tbndto);
		 }
		
		 for(FieldDTO fielddto : notice.getField()) {
			 fielddto.setNoticeSeq(notice.getSeq());
			 dao.addField(fielddto); //지원분야 기본정보
			 fielddto.setSeq(dao.getMaxFieldSeq()); //방금 넣은 지원분야 seq 얻어오기
			 
			 //요구학력
			 fielddto.getDemandEducation().setFieldSeq(fielddto.getSeq());
			 dao.addDemandEducation(fielddto.getDemandEducation());
			 
			 //요구자격증
			 for(DemandCertificateDTO cerdto : fielddto.getDemandCertificate()) {
				 cerdto.setFieldSeq(fielddto.getSeq());
				 dao.addDemandCertificate(cerdto);
			 }
			 
			 //요구어학시험
			 
			 for(DemandLangTestDTO langdto : fielddto.getDemandLangTest()) {
				 langdto.setFieldSeq(fielddto.getSeq());
				 dao.addDemandLangTest(langdto);
			 }
			 
			 //요구학과
			 for(DemandMajorDTO majordto : fielddto.getDemandMajor()) {
				 majordto.setFieldSeq(fielddto.getSeq());
				 dao.addDemandMajor(majordto);
			 }
			 
		 }

		return notice.getSeq();
	} //addNotice


	@Override
	public List<NoticeDTO> getList(HashMap<String, Integer> paging) {
		List<NoticeDTO> notice = dao.getList(paging);
		for (NoticeDTO dto : notice) {
			dto.setEndDate(dto.getEndDate().substring(0, 16));
			dto.setApplyCount(dao.getApplyCount(dto.getSeq()));
		}
		return notice;
	}


	@Override
	public int getTotalCount() {
		return dao.getTotalCount();
	}


	@Override
	public List<NoticeDTO> getMyList(HashMap<String, Integer> map) {
		List<NoticeDTO> notice = dao.getMyList(map);
		for (NoticeDTO dto : notice) {
			dto.setEndDate(dto.getEndDate().substring(0, 16));
			dto.setRegDate(dto.getRegDate().substring(0, 16));
			dto.setApplyCount(dao.getApplyCount(dto.getSeq()));
		}
		return notice;
	}


	@Override
	public int getMyTotalCount(String companySeq) {
		return dao.getMyTotalCount(companySeq);
	}


	@Override
	public NoticeViewDTO getView(String seq) {
		NoticeViewDTO view = dao.getView(seq); //공고 기본 정보
		view.setTestByNotice(dao.getTestByNotice(seq)); //면접 전형
		List<FieldDTO> field = dao.getField(seq); //지원분야 기본
		for(FieldDTO dto : field) {
			//학력
			dto.setDemandEducation(dao.getDemandEducation(dto.getSeq()));
			//자격증
			dto.setDemandCertificate(dao.getDemandCertificate(dto.getSeq()));
			//어학시험
			dto.setDemandLangTest(dao.getDemandLangTest(dto.getSeq()));
			//학과
			dto.setDemandMajor(dao.getDemandMajor(dto.getSeq()));
		}
		view.setField(field);
		return view;
	}




	
	
}
