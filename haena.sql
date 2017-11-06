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