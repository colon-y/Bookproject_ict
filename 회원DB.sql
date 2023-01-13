create table member
(
	m_idx      int,                             --회원번호
	m_id       varchar2(200)  not null,         --ID
	m_pwd      varchar2(200)  not null,         --비밀번호
	m_name     varchar2(200)  not null,         --이름
	m_tel      varchar2(200)  not null,         --전화번호
	m_zipcode  varchar2(100)  not null,         --우편번호
	m_addr     varchar2(1000) not null,         --주소
	m_nickname varchar2(100)  not null,         --닉네임
	m_grade    varchar2(100)  default '브론즈', --회원등급
	m_ip       varchar2(100)  not null,         --ip
	m_regdate  date,                            --가입일자
	m_point    int,                             --포인트
	m_intro    varchar2(2000),                  --자기소개
	m_leave    int            default 1         --탈퇴여부
)

alter table member
	add constraint pk_member_m_idx primary key(m_idx);
	
create sequence seq_member_m_idx

alter table member
	add constraint unique_member_m_id unique(m_id);
	
alter table member
	add constraint unique_member_m_nickname unique(m_nickname);
	
alter table member
	add constraint ck_member_m_grade check(m_grade in('브론즈', '실버', '골드', '관리자') )
	
alter table member
	add constraint ck_member_m_leave check(m_leave in (0, 1))

insert into member values(seq_member_m_idx.nextVal,  
											'admin',
											'1234',
                                            '관리자',
											'010-2373-3268',
											'01234',
											'서울시',
											'관리자',
											'관리자',
											'192.168.0.1',
											sysdate,
											0,
											'관리자입니다.',
											1
											)
	
	
insert into member values(seq_member_m_idx.nextVal,  
											'kcs1',
											'1234',
                                            '김철수',
											'010-1235-1234',
											'01234',
											'서울시',
											'철수마스터',
											'브론즈',
											'192.168.0.1',
											sysdate,
											0,
											'안녕하세요. 철수마스터 김철수입니다.',
											1
											)

											
alter table member add(m_login int)
alter table member add
(m_leave int
default 1 
not null)

alter table member
  add constraint unique_member_m_tel unique(m_tel)

alter table member drop column login

select * from member

drop table member cascade constraints 
											
drop sequence seq_member_m_idx;