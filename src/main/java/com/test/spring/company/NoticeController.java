package com.test.spring.company;

import java.util.ArrayList;
import java.util.HashMap;
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
import com.test.spring.dto.DemandCertificateDTO;
import com.test.spring.dto.DemandEducationDTO;
import com.test.spring.dto.DemandLangTestDTO;
/*import com.test.spring.dto.DemandLangTestDTO﻿;*/
import com.test.spring.dto.DemandMajorDTO;
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
		
		//회사 번호
		String companySeq = ((CertificationDTO)session.getAttribute("certification")).getSeq(); //회사 번호
		notice.setCompanySeq(companySeq);
		
		//공고 콘텐트
		notice.setContent(req.getParameter("noticeContent"));
		
		//시작일 & 종료일
		String startDate = get24Time(notice.getStartEndDate().substring(0, 19));
		String endDate = get24Time(notice.getStartEndDate().substring(22));
		notice.setStartDate(startDate);
		notice.setEndDate(endDate);
		
		//면접 전형
		ArrayList<TestByNoticeDTO> testByNotice = new ArrayList<TestByNoticeDTO>();
		for(int i = 1; i <= 5; i++) { //면접전형은 5개이므로
			TestByNoticeDTO temp = new TestByNoticeDTO();
			String testByNoticeSeq = req.getParameter("testByNotice" + i);
			//만약 면접 전형이 비어있지 않다면 입력받은 seq 넣어주기
			if (testByNoticeSeq != null) {
				temp.setTestTypeSeq(testByNoticeSeq);
				testByNotice.add(temp);
			}
		}
		notice.setTestByNotice(testByNotice); //면접 전형 넣어주기		
		
		//지원분야
		ArrayList<FieldDTO> field = new ArrayList<FieldDTO>();
		
		for(int i = 1; i <= 3; i++) {
			
			FieldDTO tempField = new FieldDTO();
			
			String fieldName = req.getParameter("fieldName" + i);
			if(fieldName != null) { //fieldName이 존재한다면
				tempField.setFieldName(fieldName); //지원분야명
				tempField.setContent(req.getParameter("fieldContent" + i)); //지원분야업무
				tempField.setHireTypeSeq(req.getParameter("hireTypeSeq" + i)); //고용 형태
				tempField.setCareerTypeSeq(req.getParameter("careerTypeSeq" + i)); //경력신입
				tempField.setAreaTypeSeq(req.getParameter("areaTypeSeq" + i)); //지역
				tempField.setSalary(Integer.parseInt(req.getParameter("salary" + i))); //연봉
				//dto 작업이 필요한 애들
				//요구학력
				DemandEducationDTO edudto = new DemandEducationDTO();
				edudto.setEducationTypeSeq(req.getParameter("educationTypeSeq" + i));
				//요구학력 필수우대
				edudto.setEssential(getPreference(req.getParameter("educationEssential" + i)));
				tempField.setDemandEducation(edudto);
				
				//for문 작업이 필요한 ArrayList들
				ArrayList<DemandCertificateDTO> demandCertificate = new ArrayList<DemandCertificateDTO>();
				ArrayList<DemandLangTestDTO> demandLangTest = new ArrayList<DemandLangTestDTO>();
				ArrayList<DemandMajorDTO> demandMajor = new ArrayList<DemandMajorDTO>();
				
				for (int j=1; j<=3; j++) {
					//자격증
					String certificateTypeSeq = req.getParameter("certificateTypeSeq" + i + "_" + j);
					if(certificateTypeSeq != null) {
						DemandCertificateDTO tempCertificate = new DemandCertificateDTO();
						tempCertificate.setCertificateTypeSeq(certificateTypeSeq);
						tempCertificate.setEssential(getPreference(req.getParameter("certificateEssential" + i + "_" + j)));
						demandCertificate.add(tempCertificate);
					}
					
					//어학시험
					String langTestTypeSeq = req.getParameter("langTestTypeSeq" + i + "_" + j);
					if(langTestTypeSeq != null) {
						DemandLangTestDTO tempLangTest = new DemandLangTestDTO();
						tempLangTest.setLangTestTypeSeq(langTestTypeSeq);
						tempLangTest.setEssential(getPreference(req.getParameter("langTestEssential" + i + "_" + j)));
						demandLangTest.add(tempLangTest);
					}
					
					//요구학과
					String majorCategorySeq = req.getParameter("majorCategorySeq" + i + "_" + j);
					if(majorCategorySeq != null) {
						DemandMajorDTO tempMajor = new DemandMajorDTO();
						tempMajor.setMajorCategorySeq(majorCategorySeq);
						tempMajor.setEssential(getPreference(req.getParameter("majorEssential" + i + "_" + j)));
						demandMajor.add(tempMajor);
					}
				} //for(j)
				tempField.setDemandCertificate(demandCertificate);
				tempField.setDemandLangTest(demandLangTest);
				tempField.setDemandMajor(demandMajor);
				
				field.add(tempField); //지금까지 얻은 field의 모든 정보를 field리스트에 넣기
			}//fieldName if문	
		}//for(i)
		notice.setField(field);
		
		String seq = service.addNoticeOk(notice);
		
		req.setAttribute("seq", seq);
		/*
		  	//확인
		  	for(FieldDTO dto : field) {
			System.out.println(dto.getFieldName());
			System.out.println(dto.getFieldContent());
			System.out.println(dto.getAreaTypeSeq());
			System.out.println(dto.getCareerTypeSeq());
			System.out.println(dto.getHireTypeSeq());
			System.out.println(dto.getSalary()); 
			
			System.out.println("학력");
			System.out.println(dto.getDemandEducation().getEducationTypeSeq());
			
			System.out.println("자격증");
			for(DemandCertificateDTO cerdto : dto.getDemandCertificate()) {
				System.out.println(cerdto.getCertificateTypeSeq());
			}
			
			System.out.println("어학");
			for(DemandLangTestDTO﻿ langdto : dto.getDemandLangTest()) {
				System.out.println(langdto.getLangTestTypeSeq());
			}
			
			System.out.println("학과");
			for(DemandMajorDTO majordto : dto.getDemandMajor()) {
				System.out.println(majordto.getMajorCategorySeq());
			}
		}*/
		
		return "company.notice.addnoticeok";
	}
	
	@RequestMapping(method= {RequestMethod.GET}, value="/company/list.action")
	public String getList(HttpServletRequest req) {
		int nowPage = 0;
		int totalCount = 0;
		int pageSize = 10;
		int totalPage = 0;
		int start = 0;
		int end = 0;
		int n = 0;
		int loop = 0;
		int blockSize = 10;
		
		String page = req.getParameter("page");
		
		if(page == null) nowPage = 1;
		else nowPage = Integer.parseInt(page);
		
		start = ((nowPage - 1) * pageSize) + 1;
		end = start + pageSize - 1;
		
		HashMap<String, Integer> paging = new HashMap<String, Integer>();
		paging.put("start", start);
		paging.put("end", end);
		
		List<NoticeDTO> list = service.getList(paging);
		
		totalCount = service.getTotalCount();
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		String pagebar = "<nav><ul class='pagination'>";
		loop = 1;
		n = ((nowPage - 1) / blockSize) * blockSize + 1;
		
		if (n == 1) {
			pagebar += String.format("<li class='disabled'><a href='#' area-label='Previous'><span area-hidden='true'>&raquo;</span></a></li>");	
		} else {
			pagebar += String.format("<li><a href='/final/company/list.action?page=%d' area-label='Previous'><span aria-hidden='true'>&raquo;</span></a></li>", n-1);
		}
		
		while(!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format(" <li class='active'><a href='#'>%d</a></li> ", n);
			} else {
				pagebar += String.format(" <li><a href='/final/company/list.action?page=%d'>%d</a></li>", n, n);
			}
			
			loop++;
			n++;
		}
			
		if (n > totalPage) {
			pagebar += String.format("<li class='disabled'><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>");
		} else {		
			pagebar += String.format("<li><a href='/final/company/list.action?page=%d' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>", n);
		}
		
		pagebar += "</ul></nav>";
		
		req.setAttribute("list", list);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("pagebar", pagebar);
		
		return "company.notice.list.listcss";
	}
	
	public String view() {
		return null;
		
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
	
	/**
	 * 널이면 우대를 반환
	 * @param essential
	 * @return
	 */
	private String getPreference(String essential) {
		if (essential == null) {
			essential = "우대";
		}
		return essential;
	}
}
