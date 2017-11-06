SELECT
	member.seq,
	member.name,
	member.pw,
	member.tel,
	member.address,
	member.email,
	member.GENDER,
	member.ssn,
	student.
	FROM member
		INNER JOIN student
			ON MEMBER.SEQ = STUDENT.SEQ;