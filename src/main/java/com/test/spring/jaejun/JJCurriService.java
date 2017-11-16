package com.test.spring.jaejun;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.spring.dto.CurTypeDTO;

@Service
public class JJCurriService implements IJJCurriService {
	
	@Autowired
	private JJCurriDAO dao;
	
	@Override
	public List<CurTypeDTO> curType() {
		
		return dao.curType();
	}
	
	@Override
	public int addCategory(String categoryname) {
		
		return dao.addCategory(categoryname);
	}
	
	@Override
	public int delCategory(String delcategoryseq) {
		
		return dao.delCategory(delcategoryseq);
	}
	
	@Override
	public int lastseqCategory() {
		
		return dao.lastseqCategory();
	}
	
	@Override
	public int editCategory(HashMap<String, String> map) {

		return dao.editCategory(map);
	}
	
}
