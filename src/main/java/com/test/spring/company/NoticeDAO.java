package com.test.spring.company;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.dto.AreaTypeDTO;
import com.test.spring.dto.CareerTypeDTO;
import com.test.spring.dto.CertificateTypeDTO;
import com.test.spring.dto.DemandCertificateDTO;
import com.test.spring.dto.DemandEducationDTO;
import com.test.spring.dto.DemandLangTestDTO;
import com.test.spring.dto.DemandMajorDTO;
import com.test.spring.dto.EducationTypeDTO;
import com.test.spring.dto.FieldDTO;
import com.test.spring.dto.HireTypeDTO;
import com.test.spring.dto.LangTestTypeDTO;
import com.test.spring.dto.MajorCategoryDTO;
import com.test.spring.dto.NoticeDTO;
import com.test.spring.dto.TestByNoticeDTO;
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

	public int addNotice(NoticeDTO notice) {
		
		System.out.println(notice.getCompanySeq());
		System.out.println(notice.getContent());
		return sql.insert("notice.addNotice", notice);
	}

	public String getMaxNoticeSeq() {
		return sql.selectOne("notice.getMaxNoticeSeq");
	}

	public int addTestByNotice(TestByNoticeDTO testByNotice) {
		return sql.insert("notice.addTestByNotice", testByNotice);
	}

	public int addField(FieldDTO fielddto) {
		return sql.insert("notice.addField", fielddto);
	}

	public String getMaxFieldSeq() {
		return sql.selectOne("notice.getMaxFieldSeq");
	}

	public int addDemandEducation(DemandEducationDTO demandEducation) {
		return sql.insert("notice.addDemandEducation", demandEducation);
	}

	public int addDemandCertificate(DemandCertificateDTO cerdto) {
		return sql.insert("notice.addDemandCertificate", cerdto);
	}

	public int addDemandLangTest(DemandLangTestDTO langdto) {
		return sql.insert("notice.addDemandLangTest", langdto);
	}

	public int addDemandMajor(DemandMajorDTO majordto) {
		return sql.insert("notice.addDemandMajor", majordto);
		
	}
	
}
