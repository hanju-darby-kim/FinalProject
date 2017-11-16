package com.test.spring.company;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
import com.test.spring.dto.MajorTypeDTO;
import com.test.spring.dto.TestTypeDTO;


@Controller

public class NoticeController {
	
	@Autowired
	private INoticeService service;
	
	/**
	 * 기업 공고 등록
	 * @return
	 */
	@RequestMapping(method = {RequestMethod.GET}, value="/company/addnotice.action")
	public String addNotice(HttpSession session, HttpServletRequest req) {
		
		//인증티켓 중 기업의 seq 필요
		String seq = ((CertificationDTO)session.getAttribute("certification")).getSeq();
	
		//기업 설명 얻어오기
		String content = service.getContent(seq);
		
		//전형 종류 가져오기 
		List<TestTypeDTO> testlist = new ArrayList<TestTypeDTO>();
		testlist = service.getTestType();
		
		//hireType 얻어오기
		List<HireTypeDTO> hiretypelist = new ArrayList<HireTypeDTO>();
		hiretypelist = service.getHireType();
		
		//careerType 얻어오기
		List<CareerTypeDTO> careertypelist = new ArrayList<CareerTypeDTO>();
		careertypelist = service.getCareerType();
		
		//근무지역
		List<AreaTypeDTO> areatypelist = new ArrayList<AreaTypeDTO>();
		areatypelist = service.getAreaType();
		
		//학력
		List<EducationTypeDTO> educationtypelist = new ArrayList<EducationTypeDTO>();
		educationtypelist = service.getEducationType();
		
		//자격증
		List<CertificateTypeDTO> certificatetypelist = new ArrayList<CertificateTypeDTO>();
		certificatetypelist = service.getCertificateType();
		
		//어학시험
		List<LangTestTypeDTO> langtesttypelist = new ArrayList<LangTestTypeDTO>();
		langtesttypelist = service.getLangTestType();
		
		//학과
		List<MajorCategoryDTO> majorcategorylist = new ArrayList<MajorCategoryDTO>();
		majorcategorylist = service.getMajorCategory();
		
		
		req.setAttribute("content", content);
		req.setAttribute("testlist", testlist);
		req.setAttribute("hiretypelist", hiretypelist);
		req.setAttribute("careertypelist", careertypelist);
		req.setAttribute("areatypelist", areatypelist);
		req.setAttribute("educationtypelist", educationtypelist);
		req.setAttribute("certificatetypelist", certificatetypelist);
		req.setAttribute("langtesttypelist", langtesttypelist);
		req.setAttribute("majorcategorylist", majorcategorylist);
		
		return "company.notice.addnotice.addnoticecss";
	}
}
