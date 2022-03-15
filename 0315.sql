use mymoomin;

#저장 프로그램
/*
이번주안에 데이터베이스가 끝난다고 하니 알아서 my sql을 더 공부해야 한다는 뜻
	sql문은 조건문,반복문을 활용한 응용 프로그램을 구현할 수는 없다.
    절차적인 처리를 위한 기능을 제공하는 저장 프로그램.
    네트워크의 트래픽 발생을 줄여줄 수 있다. 저장 프로그램을 하나의 명령명으로 실행이 가능하게 한다.
    저장procedure, 함수, 트리거(이벤트), 커서 등이 있다.
    형식: 정의부분, 본문부분.
    
    정의부분
    create
    definer = 사용자 | 현재 사용자
    procedure 프로시저명(매개변수,,)
    
    본문부분
    begin
		변수선언;
        변수 값을 설정;
        조건문;
        반복문;
        명령문;
	end
    
    사용 call 프로시저명(인수,인수)
    변수 -지역변수: 프로시저 안에서 선언한 변수
				declare 학생번호 int default 0;
		-사용자 변수: @시작 시작, 안 /밖 어디서든 상관없다. 데이터 타입은 선언 불필요
					SQL문에서도 내장 프로시저 안에서도 사용 가능하다.
                    
	set,select 값 into 변수
*/

delimiter $$
#구분자 선언
create procedure 학생내역 ()
	begin
		select * from 학생;
    end $$
delimiter ;

call 학생내역;
desc 학생내역; #안됨
desc 학생;




delimiter $$
create procedure test_in(in c char(9))
	begin
		select * from 학생 where 학생번호 =c;
    end $$
delimiter ;

call test_in('201434027');

delimiter $$
create procedure test_in(in c char(9))
	begin
		declare n char(9);
        set n = '202158047'; #지역변수
		select * from 학생 where 학생번호 =n;
    end $$
delimiter ;

#이거 뭐 하는건지 모르겠음 알아서 공부해야지 뭐

delimiter $$
create procedure test_in(in c char(9))
	begin
		declare n char(9);
        set n = '202158047'; #지역변수
		
        set @code = c; #전역변수이면서 상수
        
        select * from 학생 where 학생번호 =c;
    end $$
delimiter ;
select @code;

#in은 입력받음
#out은 출력. inout은 입출력이 다 가능한 매개변수

delimiter $$
create procedure 학년별종합현황(in grade int)
	begin
		select * from 학생 where 학년=grade;
	end $$
delimiter ;

call 학년별종합현황(1);
call 학년별종합현황(2);
call 학년별종합현황(3);
call 학년별종합현황(4);

desc 학생;
delimiter $$
create procedure 학생주소검색(in id char(9),out address varchar(50))
	begin
		select 주소 into address from 학생 where 학생번호 = id;
	end $$
delimiter ;

call 학생주소검색('201258047',@address); #@사용자 변수를 넣으면 된다.
select @address as '얘네 집 주소';

#사용자변수의 초기값이 1이다. 이것을 매개변수로 받고 외부에서 매개변수로 더해야할 값을 받아서 두 값을 count 변수에 저장해서 출력하시오.

set @count = 1;
delimiter $$
create procedure 증감계산(in inc int,inout count int)
	begin
		select inc + count into count;
    end $$
delimiter ;

#왜 안되지? 아하 set @count =1 을 안 활성화해서 그렇구나
call 증감계산(100, @count);
select @count;

delimiter $$
create procedure why(in inc int, inout count int)
begin
	select sum(inc+count) into count;
end $$
delimiter ;
set @count2 = 2;
call why(100, @count2);
select @count2;


#강의 인원 제한 80초과 대강의실
#40~80이면 중강의실alter그만나와진짜
#그 외는 소강의실
desc 강의;
delimiter $$
create procedure 강의실배정(in lectureCode char(4), out lectureLevel varchar(20)) #강의번호와 이수구분인듯? 아니네 강의실이네
begin
	declare lectureLimit int; #지역변수
    select 인원제한 into lectureLimit from 강의 where 강의번호 = lectureCode;
    
    if lectureLimit > 80 then set lectureLevel ='대강의실';
    elseif lectureLimit <=80 and lectureLimit > 40 then set lectureLevel = '중강의실';
    else set lectureLevel = '소강의실';
    end if; #if가 끝났다.
    
end $$
delimiter ;

call 강의실배정('C021',@lectureLevel);
select @lectureLevel as 강의실;


#case
#학년을 받아서 mt장소를 반환하는 mtplace 프로시저 작성 
#1학년 제주, 2 지리산, 3 설악산, 4 지옥
desc 학생;
delimiter $$
create procedure MTPlace(in grade int, out place varchar(10))
begin
	case grade
		when 1 then set place = '제주도';
        when 2 then set place = '지리산';
        when 3 then set place = '설악산';
        else set place = '지옥';
	end case;
end $$
delimiter ;

call MTPlace(1,@place);
select @place as 엠티장소;

call MTPlace(2,@place);
select @place as '2학년 mt 장소';

call MTPlace(4,@place);
select @place as '와하하 지옥행이다';


#반복문 while 과 do 세트.
delimiter $$
create procedure 누적합계(in num int, out sum int)
begin
	declare x int;
    set x = 1;
    set sum = 0;
    
    while x < num #<=로 했어야하는데,,
		do
        set sum = sum + x;
        set x = x + 1;
	end while;
           
end $$
delimiter ;

call 누적합계(10, @sum);
select @sum as 합계; 
