



-------------------------------------------------------------------------
-------------------------------------------------------------------------
--TABLE member_tbl_02
CREATE TABLE member_tbl_02(
custno number(6) PRIMARY KEY,       --회원번호
custname varchar2(20),              --회원성명
phone varchar2(13),                 --회원전화
address varchar2(60),               --주소
joindate date DEFAULT SYSDATE,                      --가입일자
grade varchar2(1),                      --고객등급
city varchar2(2)                        --거주도시
);

create sequence seq_no increment by 1 start with 100001;

insert into member_tbl_02 values(seq_no.nextval, '김행복', '010-1111-2222', '서울 동대문구 휘경 1동', '20151202', 'A', '01');
insert into member_tbl_02 values(seq_no.nextval, '이축복', '010-1111-3333', '서울 동대문구 휘경 2동', '20151206', 'B', '01');
insert into member_tbl_02 values(seq_no.nextval, '장믿음', '010-1111-4444', '울릉군 울릉읍 독도 1리', '20151001', 'B', '30');
insert into member_tbl_02 values(seq_no.nextval, '최사랑', '010-1111-5555', '울릉군 울릉읍 독도 2리', '20151113', 'A', '30');
insert into member_tbl_02 values(seq_no.nextval, '진평화', '010-1111-6666', '제주도 제주시 외나무골', '20151225', 'B', '60');
insert into member_tbl_02 values(seq_no.nextval, '차공단', '010-1111-7777', '제주도 제주시 감나무골', '20151211', 'C', '60');
insert into member_tbl_02 values(seq_no.nextval, 'kain', '010-1111-8888', '서울 동작구 대방동', '20230806', 'C', '02');
commit;

desc member_tbl_02;
select * from member_tbl_02;
drop table member_tbl_02;

---------------------------------------------------------------------------
--TABLE money_tbl_02
CREATE TABLE money_tbl_02(
custno number(6),           --회원번호
salenol number(8),          --판매번호
pcost number(8),            --단가
amount number(4),           --수량
price number(8),            --가격
pcode varchar2(4),          --상품코드
sdate date                  --판매일자
);

insert into money_tbl_02 values(100001, 2016001, 500, 5, 2500, 'A001', '20160101');
insert into money_tbl_02 values(100001, 2016002, 1000, 4, 4000, 'A002', '20160101');
insert into money_tbl_02 values(100001, 2016003, 500, 3, 1500, 'A008', '20160101');
insert into money_tbl_02 values(100002, 2016004, 2000, 1, 2000, 'A004', '20160102');
insert into money_tbl_02 values(100002, 2016005, 500, 1, 500, 'A001', '20160103');
insert into money_tbl_02 values(100003, 2016006, 1500, 2, 3000, 'A003', '20160103');
insert into money_tbl_02 values(100004, 2016007, 500, 2, 1000, 'A001', '20160104');
insert into money_tbl_02 values(100004, 2016008, 500, 1, 300, 'A005', '20160104');
insert into money_tbl_02 values(100004, 2016009, 600, 1, 600, 'A006', '20160104');
insert into money_tbl_02 values(100004, 2016010, 3000, 1, 3000, 'A007', '20160106');

select m1.custno, custname, grade, sum(price)
from MEMBER_TBL_02 m1 inner join money_tbl_02 m2
on m1.custno=m2.custno
group by m1.custno, m1.custname, m1.grade order by sum(price) desc;

desc money_tbl_02;
drop table money_tbl_02;
select * from money_tbl_02;
commit;




