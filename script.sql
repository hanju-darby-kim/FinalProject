CREATE TABLE tblMyBatis
(
    seq NUMBER PRIMARY KEY ,
    num NUMBER NOT NULL ,
    str VARCHAR2(100) NOT NULL
);
CREATE SEQUENCE mybatis_seq;

INSERT INTO tblMyBatis VALUES (mybatis_seq.nextval, 10, '십');
INSERT INTO tblMyBatis VALUES (mybatis_seq.nextval, 100, '백');
INSERT INTO tblMyBatis VALUES (mybatis_seq.nextval, 123, '백이십삼');
INSERT INTO tblMyBatis VALUES (mybatis_seq.nextval, 55, '오십오');
INSERT INTO tblMyBatis VALUES (mybatis_seq.nextval, 99, '구십구');



COMMIT ;

SELECT * FROM tblMyBatis;


INSERT INTO tblMyBatis(seq, num, str)








