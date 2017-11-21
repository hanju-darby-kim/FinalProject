package com.test.spring.company;

import java.util.ArrayList;
import java.util.HashMap;
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
import com.test.spring.dto.NoticeViewDTO;
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

	public List<NoticeDTO> getList(HashMap<String, Integer> paging) {
		return sql.selectList("notice.getList", paging);
	}

	public int getTotalCount() {
		return sql.selectOne("notice.getTotalCount");
	}

	public int getApplyCount(String seq) {
		return sql.selectOne("notice.getApplyCount", seq);
	}

	public List<NoticeDTO> getMyList(HashMap<String, Integer> map) {
		return sql.selectList("notice.getMyList", map);
	}

	public int getMyTotalCount(String companySeq) {
		return sql.selectOne("notice.getMyTotalCount", companySeq);
	}

	public NoticeViewDTO getView(String seq) {
		return sql.selectOne("notice.getView", seq);
	}

	public List<TestByNoticeDTO> getTestByNotice(String seq) {
		return sql.selectList("notice.getTestByNotice", seq);
	}

	public List<FieldDTO> getField(String seq) {
		return sql.selectList("notice.getField", seq);
	}

	public DemandEducationDTO getDemandEducation(String seq) {
		return sql.selectOne("notice.getDemandEducation", seq);
	}

	public List<DemandCertificateDTO> getDemandCertificate(String seq) {
		return sql.selectList("notice.getDemandCertificate", seq);
	}

	public List<DemandLangTestDTO> getDemandLangTest(String seq) {
		return sql.selectList("notice.getDemandLangTest", seq);
	}

	public List<DemandMajorDTO> getDemandMajor(String seq) {
		return sql.selectList("notice.getDemandMajor", seq);
	}
	
	
}
