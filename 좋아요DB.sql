create table like_tb
(
	l_idx     int,
	m_idx     int,
	r_idx     int,
	t_idx     int,
	b_idx     int
)

alter table like_tb
	add constraint pk_like_l_idx primary key(l_idx)
	
create sequence seq_like_tb_l_idx

alter table like_tb
	add constraint fk_like_m_idx foreign key(m_idx) references member(m_idx);
	
alter table like_tb
	add constraint fk_like_r_idx foreign key(r_idx) references review(r_idx);
	
alter table like_tb
	add constraint fk_like_t_idx foreign key(t_idx) references comment_tb(t_idx);
	
alter table like_tb
	add constraint fk_like_b_idx foreign key(b_idx) references book(b_idx);