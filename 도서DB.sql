create table book
(
	b_idx         int,                          	--도서번호
	b_name        varchar2(1000)   not null,    	--도서명
	b_isbn        varchar2(200)    not null,        --ISBN
	b_category    varchar2(200)    not null,        --카테고리
	b_author      varchar2(500)    not null,    	--저자
	b_publisher   varchar2(200)    not null,    	--출판사
	b_index       varchar2(2000)   not null,    	--목차
	b_pubdate     date             not null,    	--발행일
	b_price       int              not null,    	--단가
	b_saleprice   int              not null,    	--할인가
	b_stock       int              not null,        --재고수량
	b_content_s   clob             not null,    	--상품설명(짧은)
	b_content_l   clob             not null,    	--상품설명(긴)
	b_image_f     varchar2(255)    null,        	--상품이미지(앞)
	b_image_b     varchar2(500)    null,        	--상품이미지(뒤)
	b_point       int              not null,    	--구매포인트
	b_page        int              not null,    	--페이지수
	b_subtitle    varchar2(1000)                    --부제목
)

alter table book
	add constraint pk_book_b_idx primary key(b_idx);
	
create sequence seq_book_b_idx

alter table book
	add constraint unique_book_b_isbn unique(b_isbn);
	
alter table book
	add constraint ck_member_b_category check(b_category in('미정', '장르소설', '만화', 'IT/컴퓨터/이스포츠', '공부/참고서/문제집', '어린이', '기타'))
	
insert into book values(seq_book_b_idx.nextVal, 
                                '기본 수학의 정석 수학 (상) (2022년용)', 
                                '9791156200178',
                                '공부/문제집/참고서',
                                '홍성대',
                                '성지출판',
                                '수학의정석 목차',
                                '2017-03-15',
                                16000,
                                14400,
                                10,
                                '2015 개정 교육과정 기본 수학의 정석(상)',
                                '2015 개정 교육과정 기본 수학의 정석(상)',
                                null,
                                null,
                                160,
                                328,
                                '2015 개정 교육과정 기본 수학의 정석(상)'
                                )
                                
insert into book values(seq_book_b_idx.nextVal, 
                                '홍길동전', 
                                '9788936449032',
                                '어린이',
                                '정종목(지은이) / 이광익(그림)',
                                '창비',
                                '홍길동전 목차',
                                '2003-04-25',
                                11000,
                                9900,
                                10,
                                '재미있다! 우리 고전 시리즈 3편 홍길동전입니다.',
                                '재미있다! 우리 고전 시리즈 3편 홍길동전입니다.',
                                null,
                                null,
                                110,
                                100,
                                '재미있다! 우리 고전 시리즈 3편 홍길동전입니다.'
                                )

select * from book

drop table book cascade constraints

drop sequence seq_book_b_idx;

alter table book rename column b_image_s to b_image_f

alter table book rename column b_image_l to b_image_b

alter table book rename column b_content to b_content_s

alter table book modify b_content_s varchar2(1000)

alter table book add b_content_l clob not null

alter table book add b_subtitle varchar2(1000)

delete from book where b_idx=1

 