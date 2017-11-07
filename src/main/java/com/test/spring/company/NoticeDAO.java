package com.test.spring.company;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public String getContent(String seq) {
		return sql.selectOne("notice.getContent", seq);
	}
	
}
