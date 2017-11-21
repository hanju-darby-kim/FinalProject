package com.test.spring.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.AtReasonDTO;
import com.test.spring.dto.CurListDTO;
import com.test.spring.dto.StuListDTO;

@Service
public class ManagerService implements IManagerService {

	@Autowired
	private ManagerDAO dao;

	@Override
	public String attStart(int seq) {
		
		int result = dao.attManagerCheck(seq);
		
		if (result != 0) {
			return "금일은 이미 출결개시를 했습니다";
		} else {			
			dao.attStart(seq);
			return "금일 출결개시를 시작했습니다";
		}
	}

	@Override
	public List<CurListDTO> curList(int seq) {
		
		List<CurListDTO> orglist = dao.curList(seq);
		List<CurListDTO> list = new ArrayList<CurListDTO>();
		String temp = "";
		for (int i=0;i<orglist.size();i++) {
			CurListDTO dto = orglist.get(i);
			temp = dto.getTitle() + "..";
			dto.setTitle(temp);
			list.add(dto);
		}
		return list;
	}

	@Override
	public List<StuListDTO> stuList(int curriSeq) {
		
		return dao.stuList(curriSeq);
	}

	@Override
	public List<AtReasonDTO> reasonList(int seq) {

		return dao.reasonList(seq);
	}
}
