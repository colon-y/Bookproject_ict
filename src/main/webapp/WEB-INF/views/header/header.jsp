<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
	li.mainmenu{
		float: left;
		width: 300px;
		list-style-type: none;
		margin-left: 20px;
	}
	
	li.mainmenu ul{
		margin: 5px;
		list-style-type: none;
		padding: 0px;
	}
	
	.mainmenu a{
		width: 300px;
		display: block;
		padding: 10px;
		border-bottom: 1px solid #ffffff;
	}
	
	ul#dropdownmenu li a:hover{
		background-color: #aaaaaa;
	}
	
	#notice{
		text-align: right;
	}
	
	#reg_button{
		
	}
	
	#login_button{
	
	}
	
	#goods{
		float: right;
	}


</style>



<!-- jquery 카테고리 보여주기 -->
<script type="text/javascript">

	$(document).ready(function(){
		
		$("li.mainmenu ul").hide();
		
		$("li.mainmenu").hover(function(){
			
			$("ul", this).show(1);
			
		}, function(){
			$("ul", this).hide(1);
		})
		
	});
	
</script>


</head>
<body>


<!-- img로 만들어서 anchor tag로 넣을 것 -->
<a href=""><img src=""></a>
<p><a href="">니드북스</a></p>
우리에게 필요한, NeedBooks 니드북스

<hr>
	<div id="notice"><a href="${ pageContext.request.contextPath }/notice/notice_list.jsp">공지사항</a></div>
<hr>

<c:if test="${ empty sessionScope.user }">
	<input id="reg_button" type="button" value="회원가입" onclick="location.href='member/insert_form.do';">
	<input id="login_button" type="button" value="로그인" onclick="location.href='member/login_form.do';">
</c:if>

<c:if test="${ user.m_grade eq '관리자' }">
	<div>
		<input type="button" value="관리자 페이지" onclick="location.href='manage/main.do';">
	</div>
</c:if>

<c:if test="${ user.m_grade ne '관리자' }">
	<div>
		<input type="button" value="마이페이지" onclick="location.href='member/view.do';">
	</div>
</c:if>

<c:if test="${ not empty sessionScope.user }">
	<b>${ user.m_name }</b>님 로그인 되었습니다.
	<input type="button" value="로그아웃" onclick="location.href='member/logout.do';">
	<input type="button" value="장바구니" onclick="location.href='pay/cart_list.do?m_idx=${ user.m_idx }'">
</c:if>



<div id="search_box">
	<select id="search">
		<option value="all">전체</option>
		<option value="name">제목</option>
		<option value="content">소개글</option>
		<option value="author">저자</option>
		<option value="publisher">출판사</option>
	</select>
	<input id="search_text" value="${ param.search_text }">
	<input type="button" value="검색" onclick="search();">
</div>

<div id="goods">굿즈는 어디서?
<a href="#">우리들의 놀이터, NeedGoods 니드굿즈</a></div>




<c:if test="${ empty list }">
	<div id="empty_message">검색결과가 없습니다</div>
</c:if>



	<ul id="dropdownmenu">
		<li class="mainmenu">
			<a href="#">카테고리별 보기</a>
			  <ul>
				<li><a href="">장르소설</a></li>
				<li><a href="">만화</a></li>
				<li><a href="">IT/컴퓨터/이스포츠</a></li>
				<li><a href="">공부/참고서/문제집</a></li>
			  </ul>
		</li>
		<li class="mainmenu">
			<a href="#">도서리뷰</a>
			  <ul>
				<li><a href="">리뷰 전체 보기</a></li>
				<li><a href="">인기리뷰</a></li>
				<li><a href="">최근리뷰</a></li>
			  </ul>
		</li>
		<li class="mainmenu">
			<a href="#">중고샵</a>
			  <ul>
				<li><a href="">중고도서 전체 보기</a></li>
				<li><a href="">새로 들어온 책</a></li>
				<li><a href="">상태 좋은 책</a></li>
			  </ul>
		</li>
	</ul>






</body>
</html>