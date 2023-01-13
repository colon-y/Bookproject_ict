create table cart
(
	c_idx       int,                 --장바구니번호
	c_cnt       int,                 --수량
	m_idx       int,                 --회원번호
	b_idx       int,                 --도서번호
	u_idx       int                  --중고도서번호

)

alter table cart
	add constraint pk_cart_c_idx primary key(c_idx)

create sequence seq_cart_c_idx;

--제약조건 삭제
alter table cart
	drop constraint fk_cart_b_idx
	
--도서테이블(book)의 idx와 b_idx간의 외래키 설정
alter table cart
	add constraint fk_cart_b_idx foreign key(b_idx)
	                             references book(b_idx)
	                             on delete cascade            --도서(b_idx) 삭제->장바구니(b_idx) 행이 삭제된다
	                            
alter table cart
	drop constraint fk_cart_m_idx
	
alter table cart
	add constraint fk_cart_m_idx foreign key(m_idx)
	                             references member(m_idx)
	                             on delete cascade            --회원(m_idx) 삭제->장바구니(m_idx) 행이 삭제된다
	                             
alter table cart
	drop constraint fk_cart_u_idx
	
alter table cart
	add constraint fk_cart_u_idx foreign key(u_idx)
	                             references usedbook(u_idx)
	                             on delete cascade            --중고도서(u_idx) 삭제->장바구니(u_idx) 행이 삭제된다	                             
	                             
	                             
select * from book

select * from member

insert into cart values(seq_cart_c_idx.nextVal, 1, 1, 1, 1)

select * from cart

commit

--JoinView
create or replace view cart_view
as
	select
		c_idx, b.b_idx, u.u_idx, b_name, b_isbn, b_price, b_saleprice, 
		c_cnt, c_cnt * b_saleprice amount, m.m_idx
	from cart c left outer join member m   on c.m_idx = m.m_idx
	            left outer join book b     on c.b_idx = b.b_idx
	            left outer join usedbook u on c.u_idx = u.u_idx
	            
select * from cart_view where m_idx=1;

select sum(amount) from cart_view where m_idx=1;

delete from cart where c_idx=1

drop view cart_view

drop table cart cascade constraints 

drop sequence seq_cart_c_idx;

