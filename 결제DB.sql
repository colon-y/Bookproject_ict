create table payment
(
	pay_idx       int,                       --결제번호
	pay_num       varchar2(200)  not null,   --도서번호
	pay_name      varchar2(1000) not null,   --도서명
	pay_price     int            not null,   --단가
	pay_saleprice int            not null,   --할인가
	pay_usedpoint int,                       --사용포인트
	pay_count     int            not null,   --수량
	pay_amount    int            not null,   --총금액
	pay_paydate   date,                      --결제일자
	pay_method    varchar2(500)  not null,   --결제방식
	pay_delivery  int            not null,   --배송료
	pay_note      varchar2(1000),            --비고
	m_idx         int,                       --회원번호
	b_idx         int                        --도서번호 
)

alter table payment
	add constraint pk_payment_pay_idx primary key(pay_idx)

create sequence seq_payment_pay_idx;

alter table payment
	add constraint fk_payment_m_idx foreign key(m_idx) references member(m_idx);
	
insert into payment values(seq_payment_pay_idx.nextval,
		                                       2,
		                                       '홍길동전',
		                                       11000,
		                                       9900,
		                                       0,
		                                       1,
		                                       9900,
		                                       sysdate,
		                                       '신용/체크카드',
		                                       2500,
		                                       1
		                                       )
                                       

                                       
                                       
select * from payment                                       
                                       
drop table payment cascade constraints 

drop sequence seq_payment_pay_idx;

delete from payment where pay_idx=1
