package com.test.spring.jaejun;

import java.awt.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.CurTypeDTO;

@Repository
public class JJCurriDAO {
	
	private SqlSessionTemplate sql;
	
	public void test() {
		System.out.println(sql == null);
	}
	
	public List<CurTypeDTO> curType() {
		
		return sql.selectList("JJCurri.curType");
	}
	
	
	
}


