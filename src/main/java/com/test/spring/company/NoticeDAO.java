package com.test.spring.company;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.TestTypeDTO;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public String getContent(String seq) {
		return sql.selectOne("notice.getContent", seq);
	}

	public List<TestTypeDTO> getTestType() {
		return sql.selectList("notice.getTestType");
	}
	
}
