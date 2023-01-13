--입고
create sequence seq_stock_in_s_idx

create table stock_in
(
	s_idx         int,                       --일련번호
	s_cnt         int              not null, --입고수량
	stock_regdate date,                      --입고일자
	b_idx         int                        --도서번호
)

alter table stock_in
	add constraint pk_stock_in_s_idx primary key(s_idx);
	
alter table stock_in
	add constraint fk_stock_in_b_idx foreign key(b_idx) references book(b_idx)

--출고
create sequence seq_stock_out_s_idx

create table stock_out
(
	s_idx         int,                       --일련번호
	s_cnt         int              not null, --입고수량
	stock_regdate date,                      --입고일자
	b_idx         int                        --도서번호
)

alter table stock_out
	add constraint pk_stock_out_s_idx primary key(s_idx);
	
alter table stock_out
	add constraint fk_stock_out_b_idx foreign key(b_idx) references book(b_idx)


--재고
create sequence seq_stock_remain_s_idx

create table stock_remain
(
	s_idx         int,                       --일련번호
	s_cnt         int              not null, --입고수량
	stock_regdate date,                      --입고일자
	b_idx         int                        --도서번호
)

alter table stock_remain
	add constraint pk_stock_remain_s_idx primary key(s_idx);
	
alter table stock_remain
	add constraint fk_stock_remain_b_idx foreign key(b_idx) references book(b_idx)
	
	
drop sequence seq_stock_in_s_idx
