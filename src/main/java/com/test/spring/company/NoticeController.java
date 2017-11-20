package com.test.spring.company;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.CertificationDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.FieldDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
import com.test.spring.dto.NoticeDTO;
import com.test.spring.dto.TestByNoticeDTO;
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
	
	@RequestMapping(method= {RequestMethod.POST}, value="/company/addnoticeok.action")
	public String addNoticeOk(NoticeDTO notice, HttpSession session, HttpServletRequest req) {
		
		String companySeq = ((CertificationDTO)session.getAttribute("certification")).getSeq(); //회사 번호
		notice.setCompanySeq(companySeq);
		
		String startDate = get24Time(notice.getStartEndDate().substring(0, 19));
		String endDate = get24Time(notice.getStartEndDate().substring(22));
		
		
		//면접 전형
		ArrayList<TestByNoticeDTO> testByNotice = new ArrayList<TestByNoticeDTO>();
		for(int i = 1; i <= 5; i++) { //면접전형은 5개이므로
			TestByNoticeDTO temp = new TestByNoticeDTO();
			String testByNoticeSeq = req.getParameter("testByNotice" + i);
			//만약 면접 전형이 비어있지 않다면 입력받은 seq 넣어주기
			if (!testByNoticeSeq.equals("null")) {
				temp.setTestTypeSeq(testByNoticeSeq);
				testByNotice.add(temp);
			}
		}
		notice.setTestByNotice(testByNotice); //면접 전형 넣어주기
		
		
		
		FieldDTO field = new FieldDTO();
		
		for(int i = 1; i <= 3; i++) {
			
		}
		req.getAttribute("fieldName");
		
		return "company.notice.addnoticeok";
	}
	
	/**
	 * pm, am의 시간을 24시간 기준으로 변경
	 * @param date
	 * @return 연월일, 시간만 반환
	 */
	private String get24Time(String date) {
		
		if (date.substring(date.length() - 2).equals("PM")) {
			date = date.substring(0, 11) + (Integer.parseInt(date.substring(11, 13)) + 12) + date.substring(13, 16);
		} else {
			date = date.substring(0, 16);
		}
		
		return date;
	}
}
