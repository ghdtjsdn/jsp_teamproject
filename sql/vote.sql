create table table_vote(
v_jumin char(13) not null primary key,
v_name varchar2(20),
m_no char(1),
v_time char(4),
v_area char(20),
v_confirm char(1));

create table table_member(
m_no char(1) not null primary key,
m_name varchar2(20),
p_code char(2),
p_school char(1),
m_jumin char(13),
m_city varchar2(20));

create table table_party(
p_code char(2) not null primary key,
p_name varchar2(20),
p_indate date,
p_reader varchar2(20),
p_tel1 char(3),
p_tel2 char(4),
p_tel3 char(4));

insert into table_member values ('1', '���ĺ�', 'P1', '1', '6603011999991', '����ȭ��');
insert into table_member values ('2', '���ĺ�', 'P2', '3', '5503011999992', '�ε鷡��');
insert into table_member values ('3', '���ĺ�', 'P3', '2', '7703011999993', '���Ȳɵ�');
insert into table_member values ('4', '���ĺ�', 'P4', '2', '8803011999994', '���޷���');
insert into table_member values ('5', '���ĺ�', 'P5', '3', '9903011999995', '��������');

insert into table_party values ('P1', 'A����', '2010-01-01', '����ǥ', '02', '1111', '0001');
insert into table_party values ('P2', 'B����', '2010-02-01', '���ǥ', '02', '1111', '0002');
insert into table_party values ('P3', 'C����', '2010-03-01', '���ǥ', '02', '1111', '0003');
insert into table_party values ('P4', 'D����', '2010-04-01', '����ǥ', '02', '1111', '0004');
insert into table_party values ('P5', 'E����', '2010-05-01', '�Ӵ�ǥ', '02', '1111', '0005');

insert into table_vote values ('99010110001', '������', '1', '0930', '��1��ǥ��', 'N');
insert into table_vote values ('89010120002', '������', '2', '0930', '��1��ǥ��', 'N');
insert into table_vote values ('69010110003', '������', '3', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('59010120004', 'ȫ����', '4', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('79010110005', '������', '5', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('89010120006', '������', '1', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('59010110007', '������', '1', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('49010120008', '������', '3', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('79010110009', '������', '3', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('89010120010', '������', '4', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('99010110011', '������', '5', '0930', '��1��ǥ��', 'Y');
insert into table_vote values ('79010120012', '������', '1', '1330', '��1��ǥ��', 'Y');

insert into table_vote values ('69010110013', '������', '4', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('89010110014', '������', '2', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('99010110015', '������', '3', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('79010110016', '������', '2', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('89010110017', '������', '4', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('99010110018', '������', '2', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('99010110019', '������', '4', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('79010110020', 'Ȳ����', '5', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('69010110021', '������', '3', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('79010110022', '������', '3', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('99010110023', '������', '1', '1330', '��2��ǥ��', 'Y');
insert into table_vote values ('59010110024', '������', '3', '1330', '��2��ǥ��', 'Y');


select * from table_vote;