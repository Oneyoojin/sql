SELECT STUDNO,NAME,STUDENT.DEPTNO D1, DEPARTMENT.DEPTNO D2,DNAME 
FROM SAMPLE.STUDENT s, DEPARTMENT
WHERE STUDENT.DEPTNO  =DEPARTMENT.DEPTNO;


--학생 16명
-- 학과 7개.

-- 카티션 프로덕트.
SELECT COUNT(*) FROM DEPARTMENT d ; 