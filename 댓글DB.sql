
create table comment_tb
(
	t_idx     int,            --댓글번호
	t_content varchar2(2000), --댓글내용
	t_ip      varchar2(100),  --아이피
	t_regdate date,           --작성일자
	m_idx     int,            --회원번호
	m_name    varchar2(100),  --작성자명
	r_idx     int             --게시판번호
)

alter table comment_tb
	add constraint pk_comment_tb_t_idx primary key(t_idx);
	
alter table comment_tb
	add constraint fk_comment_tb_m_idx foreign key(m_idx) references member(m_idx)
	
alter table comment_tb
	add constraint fk_comment_tb_r_idx foreign key(r_idx) references review(r_idx)
	
select * from comment_tb where b_idx=?


select * from
(
	select
		t.*,
		rank() over(order by t_idx desc) no
		from (select * from comment_tb where r_idx=?) t
)
where no between 4 and 6