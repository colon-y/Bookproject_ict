create table usedbook
(
	u_idx       int,                      --중고도서번호
	b_idx       int,                      --도서번호
	u_storedate date,                     --입고일자
	u_status    varchar2(100)   not null  --책상태
	
)

alter table usedbook
	add constraint pk_usedbook_u_idx primary key(u_idx)
	
create sequence seq_usedbook_u_idx;
	
alter table usedbook
	add constraint fk_book_b_idx foreign key(b_idx) references book(b_idx);
	
alter table usedbook
	add constraint ck_usedbook_u_status check(u_status in('최상', '상', '중') ) 
	
create or replace view usedbook_view
as
   select u_idx, u_storedate, u_status, b.b_idx, b_name, b_isbn, b_category, b_author, b_publisher, b_index, b_pubdate, b_price, b_saleprice, b_stock, b_content_s, b_content_l, b_image_f, b_image_b, b_point, b_page, b_subtitle
from usedbook u inner join book b on u.b_idx=b.b_idx
                                                      
                                                      
select * from usedbook_view

insert into usedbook_view values(seq_usedbook_u_idx.nextVal,
                                           1,
                                           2022-07-20,
                                           '상',
                                           16000,
                                           8000,
                                           '기본 수학의 정석 수학 (상) (2022년용)',
                                           '9791156200178',
                                           '참고서',
                                           '홍성대',
                                           '2017-03-15',
                                           '2015 개정 교육과정 기본 수학의 정석(상)',
                                           null,
                                           null
                                           )
                                           
                                           
delete from usedbook_view where u_idx=1

delete from usedbook where u_idx=1

drop view usedbook_view

drop table usedbook cascade constraints 

drop sequence seq_usedbook_u_idx;