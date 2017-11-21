SELECT
	member.seq,
	member.name,
	member.pw,
	member.tel,
	member.address,
	member.email,
	member.gender
	FROM member
		INNER JOIN student
			ON MEMBER.SEQ = STUDENT.SEQ;


select * from MEMBER;
select * from TEACHER;
SELECT * FROM TESTTYPE;

CREATE TABLE hireType
(
	seq NUMBER PRIMARY KEY,
	hireType VARCHAR2(100) NOT NULL
);

CREATE SEQUENCE hireTypeSeq;

INSERT INTO hireType (seq, hireType) VALUES (hireTypeSeq.nextval, '정규직');
INSERT INTO hireType (seq, hireType) VALUES (hireTypeSeq.nextval, '계약직');
INSERT INTO hireType (seq, hireType) VALUES (hireTypeSeq.nextval, '인턴');

CREATE TABLE careerType
(
	seq NUMBER PRIMARY KEY,
	careerType VARCHAR2(100) NOT NULL
);
CREATE SEQUENCE careerTypeSeq;

INSERT INTO careerType (seq, careerType) VALUES (careerTypeSeq.nextval, '신입');

INSERT INTO careerType (seq, careerType) VALUES (careerTypeSeq.nextval, '경력');

INSERT INTO careerType (seq, careerType) VALUES (careerTypeSeq.nextval, '무관');

select * from careerType;

select * from hireType;


commit;

ALTER TABLE tblfield RENAME COLUMN hireType TO hireTypeSeq;

ALTER TABLE tblfield RENAME COLUMN careerType TO careerTypeSeq;
select * from TBLFIELD;

ALTER TABLE tblfield MODIFY (hireTypeSeq NOT NULL);

ALTER TABLE tblfield MODIFY (careerTypeSeq NOT NULL);

ALTER TABLE tblfield MODIFY (hireTypeSeq NUMBER REFERENCES hireType(seq));

ALTER TABLE tblfield MODIFY (careerTypeSeq NUMBER REFERENCES careerType(seq));

UPDATE TBLFIELD SET hireTypeSeq = 1;
UPDATE TBLFIELD SET careerTypeSeq = 1;
UPDATE TBLFIELD SET location = null;
SELECT * FROM TBLFIELD;


alter table TBLFIELD MODIFY (location number);
ALTER TABLE TBLFIELD MODIFY (LOCATION REFERENCES TBLAREATYPE(SEQ));

alter table TBLFIELD rename column location to areaTypeSeq;


select * from TBLAREATYPE;
select * from DEMANDCERTIFICATE;
update DEMANDCERTIFICATE SET CERTIFICATETYPESEQ = 1 where seq = 21;
select * from DEMANDLANGTEST;
COMMIT;
select * from EDUCATIONTYPE;
select * from LANGTESTTYPE;
select * from majorCategory;
select * from certificateType;
ALTER TABLE langTestType RENAME COLUMN name TO langTestType;

ALTER TABLE educationType RENAME COLUMN educationcategoryName TO educationType;

commit;

select * from majorcategory;

update majorcategory set majorcategory = '인문학' where majorcategory = '문학';

update majorcategory set majorcategory = '어문학' where majorcategory = '어학';

commit;

select to_date('2017-02-02 11:13', 'yyyy-mm-dd HH:MI') from dual;
select * from DEMANDLANGTEST;

alter table DEMANDLANGTEST rename COLUMN vital to essential;

ALTER TABLE tblNotice ADD (startDate DATE);

select * from TBLFIELD;

select * from TBLNOTICE;
select * from TESTBYNOTICE;

select * from DEMANDEDUCATION;
alter table DEMANDEDUCATION rename COLUMN educationType TO educationTypeSeq;

INSERT INTO DEMANDCERTIFICATE (SEQ, FIELDSEQ, VITAL, CERTIFICATETYPESEQ) VALUES (DEMANDCERTIFICATESEQ.nextval, );
ALTER TABLE demandCertificate RENAME COLUMN vital TO essential;

select * from DEMANDCERTIFICATE;

INSERT INTO demandLangTest (SEQ, FIELDSEQ, LANGTESTTYPESEQ, ESSENTIAL) VALUES (demandLangTestSeq.nextval, )

create SEQUENCE demandLangTestSeq START WITH 5;
select * from demandLangTest;

select * from demandMajor;
create sequence demandMajorSeq START WITH 27;
SELECT * FROM
	(SELECT a.*, rownum AS rnum FROM
		(SELECT n.SEQ,
			c.name AS companyName,
			c.ADDRESS AS companyAddress,
			n.ENDDATE
				FROM tblNotice n
			INNER JOIN company c
				ON n.COMPANYSEQ = c.SEQ
					WHERE n.CONFIRM = 'y') a)
		WHERE rnum >= 1 AND rnum <= 2;

SELECT * FROM tblnotice;
select * from TBLAPPLY;
select * from company;

SELECT COUNT(* ) FROM TBLAPPLY WHERE fieldSeq IN (SELECT seq FROM tblField WHERE noticeSeq = 6);


SELECT * FROM
		(SELECT a.*, rownum AS rnum FROM
			(SELECT n.SEQ,
				c.name AS companyName,
				n.confirm,
				n.ENDDATE
					FROM tblNotice n
				INNER JOIN company c
					ON n.COMPANYSEQ = c.SEQ
						WHERE n.companySeq = 2) a)
				WHERE rnum >= 1 AND rnum <= 10;
select * from tblnotice;

SELECT * FROM company;

select * from tblnotice;

update tblnotice set confirm = 'n' WHERE confirm IS NULL;

SELECT * FROM tblnotice;

commit;

SELECT COUNT(*) FROM tblNotice WHERE companySeq = 2;