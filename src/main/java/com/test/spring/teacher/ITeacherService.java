package com.test.spring.teacher;

import java.util.HashMap;

import com.test.spring.dto.CurSubjectsDTO;

public interface ITeacherService {

	CurSubjectsDTO getCurSubject(HashMap<String, String> map);

}
