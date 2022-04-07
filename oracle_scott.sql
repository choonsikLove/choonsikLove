--scott�� ���̺� ������ ��ȸ.

select count(*) from user_tables;

--emp ���̺��� ��� ������ ��ȸ
select * from emp;

select * from dept;

--0406
select * from dept;
desc dept;

select * from emp order by sal desc;
desc emp;

--to_char �Լ��� �̿��ؼ�! hiredate ��� ������ ��ȯ�Ѵ�.
--to_char(������ �÷���, '����') ""�� �ȵ� ''���� ��.

select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') hiredate, sal, comm, deptno from emp;

--�̷� �Լ��� �ƽ�Ÿ�� �����ؼ� ����� �� ����.
--asterisk�� �����ϸ� �� ���� �׳� �÷����� ���� �� ����.
--alias �� �ᵵ �ǳ�����

--Member ���̺� ����.
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
--Ȯ�� �������� �� ����սô� ���̺��� �� ����������� ����.
--MEMBER�� �ҹ��ڶ�� ã�� �� ��� �̶��� �� MEMBER�� ���ô�.

SELECT * FROM MEMBER; --�ű⤾r��,,

--pass column �߰�.
ALTER TABLE MEMBER
    ADD PASS VARCHAR2(30); --�������� add column�̶�� �ߴµ� ������ ���ص� �����ٰ� �ϳ׿�.

--�ӽ� �����͸� �־�� pass��
--INSERT�� �ƴ϶� UPDATE��! �̹� �ִ� �Ϳ� �߰��ϴ� �Ÿ� UPDATE��!
UPDATE MEMBER SET PASS = '1234'; --"" ���� ����,,,,��
--SQL TOOL���� ������Ʈ�� �ϸ� �޸𸮿��� �ö󰡱� ������ PHANTOM DATA��� �θ��ٰ� �մϴ� �׷���,,
COMMIT;
--�� �ؾ��Ѵ�.

--0407
--�α���
select count(*) from member where mid='test' and pass='1234';
--���� ������ 1�� ������ ������ count ���� 0�� ����.

--�̷��� �ϸ� �ڹٿ� �� ���� �������� ���ϰ� �ϴ� 1�� �۾��� �ؾ� �Ѵ�.
select mid,pass from member where mid='test' and pass='1234';

--CGV ȸ������ CGV_MEMBER
--FORM�� ���̺� ���߱�(������ �ϳ��� ����?)
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

SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_MEMBER'; --�� Ȯ���غ��ô�! ���̺��̸��� �� �빮��.
DESC CGV_MEMBER;

SELECT * FROM CGV_MEMBER;

DELETE FROM CGV_MEMBER WHERE ID='mugcup';

--cgv_board ���̺� ����
--PK B_1 �̷� ������
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

--BID COLUMN�� ���� SEQUENCE ����(�ڵ� ��ȣ ������)
CREATE SEQUENCE SEQU_CGV_BOARD_BID
    START WITH 1
    INCREMENT BY 1;

--SEQUENCE �� ����������� Ȯ���غ���
SELECT * FROM user_sequences;