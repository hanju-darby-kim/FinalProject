package com.test.spring.manager;

import java.util.List;

import com.test.spring.dto.AtReasonDTO;
import com.test.spring.dto.CurListDTO;
import com.test.spring.dto.StuListDTO;
import com.test.spring.dto.StudentDTO;

public interface IManagerService {

	String attStart(int seq);

	List<CurListDTO> curList(int seq);

	List<StuListDTO> stuList(int curriSeq);

	List<AtReasonDTO> reasonList(int seq);

}
