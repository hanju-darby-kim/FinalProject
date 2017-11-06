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

select * from MANAGER;

SELECT * FROM COMPANY;
ALTER TABLE company ADD id VARCHAR2(20);
ALTER TABLE company ADD pw VARCHAR2(40);

UPDATE company SET id = 'gm', pw = '1111' WHERE seq = 6;
commit;

