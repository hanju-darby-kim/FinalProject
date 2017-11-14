package com.test.spring.jaejun;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.CurTypeDTO;

@Repository
public class JJCurriDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void test() {
		System.out.println(sql == null);
		
	}
	
	public List<CurTypeDTO> curType() {
		
		return sql.selectList("JJCurri.getCurType");
	}
	
	public int addCategory(String categoryname) {
		
		return sql.insert("JJCurri.categoryadd", categoryname);
	}
	
}


