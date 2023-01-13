create table review
(
	r_idx     int,                         --리뷰번호
	r_subject varchar2(1000) not null,     --리뷰제목
	r_score   int,                         --리뷰점수
	r_content varchar2(2000) not null,     --리뷰내용
	r_ip      varchar2(100)  not null,     --ip
	r_regdate date,                        --등록일자
	r_readhit int  default 0,              --조회수
	r_use_yn  char(1) default 'y',         --게시물 사용유무(삭제유무)
	r_img     varchar2(500),               --리뷰사진
	r_ref     int,                         --참조글번호
	r_step    int,                         --글 순서
	r_depth   int,                         --글 깊이
	m_idx     int,                         --회원번호
	b_idx     int                          --도서번호
)

alter table review
	add constraint pk_review_r_idx primary key(r_idx)

create sequence seq_review_r_idx

alter table review
	add constraint fk_review_m_idx foreign key(m_idx) references member(m_idx)

alter table review
	add constraint fk_review_b_idx foreign key(b_idx) references book(b_idx)

alter table review 
	add constraint r_score_ck check(r_score >= 0 and r_score <=10)
                                     
                                     
select * from review

select * from all_constraints
                                     
                                     
create or replace view review_view
as
select
	r_idx, r_subject, r_score, r_content, r_ip, r_regdate, r_readhit, r_use_yn, r_img, r_ref, r_step, r_depth, m.m_idx, m_nickname, b.b_idx, b_name, b_category, b_author, b_publisher, b_image_f, b_image_b, b_subtitle
from
review r left outer join member m on r.m_idx = m.m_idx
		 left outer join book b on r.b_idx = b.b_idx
		 
--새글쓰기
insert into review_view values(seq_review_r_idx.nextval,
                                     '수학의 정석 리뷰',
                                     8,
                                     '기초인데 연습문제가 좀 어려웠습니다',
                                     '192.168.0.1',
                                     sysdate,
                                     default,
                                     default,
                                     null,
                                     seq_review_r_idx.currVal,
                                     3,
                                     1,
                                     '철수마스터',
                                     '기본 수학의 정석 수학 (상) (2022년용)',
                                     '참고서',
                                     '홍성대',
                                     '성지출판',
                                     null,
                                     null,
                                     null
                                     )

drop view review_view
                 
select * from review_view
                                     
drop table review cascade constraints 

drop view review_view

drop sequence seq_review_r_idx;

alter table review add r_img varchar2(500)

delete from review_view where r_idx=2

delete from review where r_idx=1