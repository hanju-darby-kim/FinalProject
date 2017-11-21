package com.test.spring.company;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
import com.test.spring.dto.NoticeDTO;
import com.test.spring.dto.TestTypeDTO;

public interface INoticeService {
	String getContent(String seq);
	List<TestTypeDTO> getTestType();
	List<HireTypeDTO> getHireType();
	List<CareerTypeDTO> getCareerType();
	List<AreaTypeDTO> getAreaType();
	List<EducationTypeDTO> getEducationType();
	List<CertificateTypeDTO> getCertificateType();
	List<LangTestTypeDTO> getLangTestType();
	List<MajorCategoryDTO> getMajorCategory();
	String addNoticeOk(NoticeDTO notice);
	ArrayList<NoticeDTO> getList(HashMap<String, Integer> paging);
}
