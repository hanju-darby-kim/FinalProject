package com.test.spring.teacher;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.CurSubjectsDTO;

@Repository
public class TeacherService implements ITeacherService {

	@Autowired
	private TeacherDAO dao;

	@Override
	public CurSubjectsDTO getCurSubject(HashMap<String, String> map) {

		CurSubjectsDTO csdto = new CurSubjectsDTO();
		
		
		String curSeq = dao.getOpenCurSeqByTSeq(map); 
		//세션에 저장되있는 강사 시퀀스와, 현재 날짜를 이용해서 강사가 현재 교육중인 curriculum seq를 갖고온다.
		
		
		List<CurSubjectsDTO> cslist = new ArrayList<CurSubjectsDTO>();
		
		cslist=dao.getCurSubjectsByCSeq(curSeq);
		//curriculum seq을 통해서 해당 커리큘럼이 갖고 있는 과목정보들을 가지고온다.
		
		
		return csdto;
	}
}
