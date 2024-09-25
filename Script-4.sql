--SELECT 1+1 FROM STUDENT; //행 개수가 16개이므로 16개의 항목이 나옴.
SELECT 1+1 
FROM DUAL
WHERE 'SQL' = 'SQL   ';   --WHERE (조건식) 같은 가 물어보는 것. -- Fals 를 던지면 값이 안 나옴. 문자는 ''로 표기. 문자는 공백을 넣어도 참으로 나옴 Stream 작업을 해야됨.

CREATE TABLE EX_TYPE (
	C CHAR(7),
	V VARCHAR(100)--C라는 변수로 차(문자타입) 7칸 넣겠다.
	N NUMBER(5,2)
);

DROP TABLE EX_TYPE;

SELECT *
FROM EX_TYPE
ORDER BY TO_NUMBER(C) ASC;

INSERT INTO EX_TYPE VALUES('1','SQL',1); -- 테이블은 최소 1개의 칼럼을 가지고 있다. (자료저장) List ADD 와 똑같음.
INSERT INTO EX_TYPE VALUES('100','SQL',100);
INSERT INTO EX_TYPE VALUES('2','SQL',2);
INSERT INTO EX_TYPE VALUES('3','SQL',3);
INSERT INTO EX_TYPE VALUES('20','SQL',20);

DELETE FROM EX_TYPE;

SELECT *
FROM EX_TYPE
WHERE C=V|| '    ';

SELECT 3.14 + 1 FROM DUAL;

SELECT ROWNUM, STUDENT.*, ROWID FROM STUDENT
WHERE ROWNUM > 5;

-- WHERE GRADE = 2; -- 조회가 완료된 순번에 붙게 된 숫자.

--현재 시간 정보 조회
SELECT SYSDATE FROM DUAL;

SELECT * FROM DEPARTMENT d ;

SELECT * FROM  EX_TYPE;

-- 학생 테이블에서 1학년 학생의 학번 이름 학과번호 조회
SELECT STUDNO , NAME , DEPTNO , GRADE 
FROM STUDENT s 
WHERE GRADE = 1;  -- GRADE 문자형태로 기록.(넘버 타입으로)
:= -- 대입 연산자.

-- 학번 이름 학과번호 몸무게 조회

SELECT STUDNO , NAME, GRADE, DEPTNO , WEIGHT
FROM STUDENT
WHERE WEIGHT <= 70;

-- 이름 학년 몸무게 학과번호, 70KG 이상이면서 1학년 학생.
SELECT NAME , GRADE , WEIGHT ,DEPTNO 
FROM STUDENT s 
WHERE WEIGHT >= 70 OR GRADE = '1';

-- 학번 이름 몸무게, 체중이 50이상 70이하인 사람만.
SELECT STUDNO , NAME, WEIGHT 
FROM STUDENT s 
WHERE 
	WEIGHT BETWEEN 50 AND 70 
	AND GRADE = 1;

-- 학생중 이름, 생년월일 출력, 81년에서 83년 사이에 태어난
SELECT NAME, BIRTHDATE
FROM STUDENT s 
WHERE BIRTHDATE BETWEEN '181/01/01' AND '83/12/31'; -- 한국 한정으로 가능.

-- 이름, 학년, 학과번호 조회, 102번, 201번 학과만
SELECT NAME, GRADE , DEPTNO
FROM STUDENT
WHERE DEPTNO IN(102, 201);

-- 학생중 이름, 생년월일 출력, 81년에서 83년 사이에 태어난 IN을 사용
SELECT TO_CHAR(BIRTHDATE,'YY')YY,s.* --학생 .*
FROM STUDENT s 
WHERE TO_CHAR(BIRTHDATE,'YY') IN(81,82,83)

-- 이름, 학년, 학과번호 조회, 김씨만
SELECT *
FROM STUDENT s 
WHERE NAME LIKE '%김%'; --중간이나 끝에 영이 들어가면 포함.  // 끝만 영이 들어가면 %영.

SELECT 2/NULL FROM DUAL;

-- 교수 테이블에서 이름, 직급, 보직수당 조회

SELECT NAME,POSITION ,COMM
FROM PROFESSOR p;


-- 교수 테이블에서 이름, 직급, 보직수당 조회 단 수당이 있는 사람만.

SELECT NAME,POSITION ,COMM
FROM PROFESSOR p
WHERE COMM IS NOT NULL; -- NULL 은 값이 NULL 이라서 != 은 안됨.

-- 교수이름, 급여, 수당, 급여+수당 조회
SELECT NAME , SAL, COMM, SAL+COMM SALCOM,NVL(COMM,0)+SAL A,  NVL2(COMM,SAL+COMM, SAL) B    --NULL이 올수있는 값, 대체 값
FROM PROFESSOR p;




-- MVL / MVL2






