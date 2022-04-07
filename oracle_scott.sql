--scott의 테이블 개수를 조회.

select count(*) from user_tables;

--emp 테이블의 모든 데이터 조회
select * from emp;

select * from dept;

--0406
select * from dept;
desc dept;

select * from emp order by sal desc;
desc emp;

--to_char 함수를 이용해서! hiredate 출력 형식을 변환한다.
--to_char(수정할 컬럼명, '형식') ""는 안돼 ''여야 함.

select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') hiredate, sal, comm, deptno from emp;

--이런 함수는 아스타와 연동해서 사용할 수 없다.
--asterisk는 가능하면 안 쓰고 그냥 컬럼명을 쓰는 게 좋다.
--alias 안 써도 되나봐용

--Member 테이블 생성.
create table member(
    MID      VARCHAR2(50) PRIMARY KEY,
    MNAME    VARCHAR2(30) NOT NULL,
    ADDR    VARCHAR2(100),
    HP      VARCHAR2(50) NOT NULL,
    MDATE   DATE
);

DROP TABLE MEMBER;
DESC MEMBER;

SELECT * FROM USER_TABLES where table_name = 'MEMBER';
--확인 차원에서 꼭 사용합시다 테이블이 잘 만들어졌는지 보기.
--MEMBER가 소문자라면 찾을 수 없어서 이때는 꼭 MEMBER로 씁시다.

SELECT * FROM MEMBER; --신기ㅎr다,,

--pass column 추가.
ALTER TABLE MEMBER
    ADD PASS VARCHAR2(30); --옛날에는 add column이라고 했는데 요즘은 안해도 괜찮다고 하네용.

--임시 데이터를 넣어보기 pass에
--INSERT가 아니라 UPDATE야! 이미 있는 것에 추가하는 거면 UPDATE야!
UPDATE MEMBER SET PASS = '1234'; --"" 쓰지 마라,,,,힝
--SQL TOOL에서 업데이트를 하면 메모리에만 올라가기 때문에 PHANTOM DATA라고 부른다고 합니다 그래서,,
COMMIT;
--을 해야한다.

--0407
--로그인
select count(*) from member where mid='test' and pass='1234';
--값이 있으면 1이 나오고 없으면 count 값이 0이 나옴.

--이렇게 하면 자바에 이 값을 가져가서 비교하고 하는 1번 작업을 해야 한다.
select mid,pass from member where mid='test' and pass='1234';

--CGV 회원가입 CGV_MEMBER
--FORM과 테이블 맞추기(나머지 하나는 뭐지?)
CREATE TABLE CGV_MEMBER(
    ID      VARCHAR2(50) PRIMARY KEY,
    PASS    VARCHAR2(50) NOT NULL,
    NAME    VARCHAR2(50) NOT NULL,
    GENDER  VARCHAR2(10) NOT NULL,
    EMAIL   VARCHAR2(50) NOT NULL,
    HP      VARCHAR2(20) NOT NULL,
    HOBBYLIST VARCHAR2(50) NOT NULL,
    INTRO VARCHAR2(100),
    MDATE   DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_MEMBER'; --꼭 확인해봅시다! 테이블이름은 꼭 대문자.
DESC CGV_MEMBER;

SELECT * FROM CGV_MEMBER;

DELETE FROM CGV_MEMBER WHERE ID='mugcup';

--cgv_board 테이블 생성
--PK B_1 이런 식으로
CREATE TABLE CGV_BOARD(
    BID     VARCHAR2(10) PRIMARY KEY,    
    BTITLE   VARCHAR2(100) NOT NULL,
    BCONTENT    VARCHAR2(200),
    BHITS   NUMBER(4),
    BDATE   DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'CGV_BOARD';
DESC CGV_BOARD;

SELECT * FROM CGV_BOARD;

--BID COLUMN에 들어가는 SEQUENCE 생성(자동 번호 생성기)
CREATE SEQUENCE SEQU_CGV_BOARD_BID
    START WITH 1
    INCREMENT BY 1;

--SEQUENCE 잘 만들어졌는지 확인해보기
SELECT * FROM user_sequences;