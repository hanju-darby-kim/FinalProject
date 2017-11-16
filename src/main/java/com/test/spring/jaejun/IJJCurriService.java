package com.test.spring.jaejun;

import java.util.HashMap;
import java.util.List;

import com.test.spring.dto.CurTypeDTO;

public interface IJJCurriService {
	
	List<CurTypeDTO> curType();

	int addCategory(String categoryname);

	int delCategory(String delcategoryseq);

	int lastseqCategory();

	int editCategory(HashMap<String, String> map);

	
	
	
}
