package com.test.spring.hyunjin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.ConsulteeTypeDTO;
import com.test.spring.dto.ConsultingBookingDTO;
import com.test.spring.dto.CurTypeDTO;


@Repository
public class ConsultDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void test() {
		System.out.println(sql == null);
		
	}
	
/*
	public int addCategory(String categoryname) {
		
		return sql.insert("JJCurri.categoryadd", categoryname);
	}*/

	public List<ConsulteeTypeDTO> consulteeType() {
		// TODO Auto-generated method stub
		return sql.selectList("hyunjin.getConsulteeType");
	}

	public List<CurTypeDTO> curType() {
		// TODO Auto-generated method stub
		return sql.selectList("hyunjin.getCurType");
	}

	public int booking(ConsultingBookingDTO dto) {
		// TODO Auto-generated method stub
		System.out.println("curTypeSeq : " + dto.getCurTypeSeq());
		return sql.insert("hyunjin.booking", dto);
	}
	
}


