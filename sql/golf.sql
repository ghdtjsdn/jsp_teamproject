
drop table TBL_GOLF_TEACHER;


create table tbl_golf_teacher(
    TEACHER_CODE CHAR(3) PRIMARY KEY,
    TEACHER_NAME VARCHAR2(15),
    CLASS_NAME VARCHAR2(20),
    CLASS_PRICE NUMBER(8),
    TEACHER_REGIST_DATE VARCHAR2(8)
);

insert into TBL_GOLF_TEACHER values('100', '이초급', '초급반', 100000, '20220101');
insert into TBL_GOLF_TEACHER values('200', '김중급', '중급반', 200000, '20220102');
insert into TBL_GOLF_TEACHER values('300', '박고급', '고급반', 300000, '20220103');
insert into TBL_GOLF_TEACHER values('400', '정심화', '심화반', 400000, '20220104');

desc TBL_GOLF_TEACHER;

commit;

select * from TBL_GOLF_TEACHER;

drop table tbl_golf_member;

create table TBL_GOLF_MEMBER(
    C_NO CHAR(5) PRIMARY KEY, 
    C_NAME VARCHAR2(15),
    PHONE VARCHAR2(11),
    ADDRESS VARCHAR2(50),
    GRADE VARCHAR2(6)
);

insert into TBL_GOLF_MEMBER values('10001', '홍길동', '01011112222', '서울시 강남구', '일반');
insert into TBL_GOLF_MEMBER values('10002', '장발장', '01022223333', '성남시 분당구', '일반');
insert into TBL_GOLF_MEMBER values('10003', '임꺽정', '01033334444', '대전시 유성구', '일반');
insert into TBL_GOLF_MEMBER values('20001', '성춘향', '01044445555', '부산시 서구', 'VIP');
insert into TBL_GOLF_MEMBER values('20002', '이몽룡', '01055556666', '대구시 북구', 'VIP');

select * from TBL_GOLF_MEMBER;

desc tbl_golf_member;

commit;

drop table TBL_GOLF_CLASS;

create table TBL_GOLF_CLASS(
    REGIST_MONTH VARCHAR2(6),
    C_NO char(5) not null,
    CLASS_AREA VARCHAR2(15),
    TUITION NUMBER(8),
    TEACHER_CODE CHAR(3)
);


ALTER TABLE TBL_GOLF_CLASS
drop constraint MemberNo;


ALTER TABLE TBL_GOLF_CLASS
add constraint MemberNo foreign key (c_no) references TBL_GOLF_MEMBER (c_no) ON DELETE CASCADE ;



desc tbl_golf_class;

insert into TBL_GOLF_CLASS values('202203', '10001', '서울본원', 100000, '100');
insert into TBL_GOLF_CLASS values('202203', '10002', '성남분원', 100000, '100');
insert into TBL_GOLF_CLASS values('202203', '10003', '대전분원', 200000, '200');
insert into TBL_GOLF_CLASS values('202203', '20001', '부산분원', 150000, '300');
insert into TBL_GOLF_CLASS values('202203', '20002', '대구분원', 200000, '400');

select * from TBL_GOLF_CLASS;


---- 

select c.regist_month as regist_month, c.c_no as c_no, m.c_name as c_name,
    t.class_name as class_name, c.class_area as class_area,
    c.tuition as tution, m.grade as grade
    from tbl_golf_class c, tbl_golf_teacher t, tbl_golf_member m
    where c.teacher_code = t.teacher_code and c.c_no = m.c_no;

commit;


select t.teacher_code as teacher_code, t.class_name as class_name, t.teacher_name as teacher_name, sum(c.tuition) as sale
from tbl_golf_class c, tbl_golf_teacher t
where t.teacher_code = c.teacher_code group by t.teacher_code, t.class_name, t.teacher_name order by teacher_code;
