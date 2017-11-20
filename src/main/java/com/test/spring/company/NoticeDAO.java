package com.test.spring.company;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
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

	public List<HireTypeDTO> getHireType() {
		return sql.selectList("notice.getHireType");
	}

	public List<CareerTypeDTO> getCareerType() {
		return sql.selectList("notice.getCareerType");
	}

	public List<AreaTypeDTO> getAreaType() {
		return sql.selectList("notice.getAreaType");
	}

	public List<EducationTypeDTO> getEducationType() {
		return sql.selectList("notice.getEducationType");
	}

	public List<CertificateTypeDTO> getCertificateType() {
		return sql.selectList("notice.getCertificateType");
	}

	public List<LangTestTypeDTO> getLangTestType() {
		return sql.selectList("notice.getLangTestType");
	}

	public List<MajorCategoryDTO> getMajorCategory() {
		return sql.selectList("notice.getMajorCategory");
	}
	
}
