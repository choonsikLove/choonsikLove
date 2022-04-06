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