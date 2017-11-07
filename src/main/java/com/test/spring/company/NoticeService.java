package com.test.spring.company;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	/**
	 * 공고 db 저장
	 */
	@Override
	public int addNoticeOk(String seq) {
		
		return 0;
	}

	
	
}
