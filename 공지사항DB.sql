create table notice
(
	n_idx      int,                      --공지사항번호
	n_subject  varchar2(1000)  not null, --제목
	n_content  varchar2(2000)  not null, --내용
	n_regdate  date            not null, --작성일자
	m_nickname varchar2(100)   not null, --작성자
	n_attach   varchar2(500),            --첨부파일
	n_use      char(1) default 'y'       --게시물 사용유무(삭제유무)
	
)

alter table notice
	add constraint pk_notice_n_idx primary key(n_idx)
	
create sequence seq_notice_n_idx
	
alter table notice
	add constraint fk_notice_m_nickname foreign key(m_nickname) references member(m_nickname)
	
alter table notice
	add n_attach varchar2(500)
	
alter table notice
	add n_view_no int not null
	
alter table notice
	add n_use char(1) default 'y'
	
alter table notice
	drop column n_view_no
	
select * from notice

select from
(
	select n.*,

)
where no between 