<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<style type="text/css">
	.b_image_b{
		display: none;
	}

</style>

<script type="text/javascript">

function imagesToggle(){
	if($(".b_image_f").click){
		$(".b_image_f").css("display", "none");
		$(".b_image_f").removeClass("open");
		$(".b_image_b").css("display", "block");
		$(".b_image_b").addClass("open");
	}else{
		$(".b_image_f").css("display", "block");
		$(".b_image_f").addClass("open");
		$(".b_image_b").css("display", "none");
		$(".b_image_b").removeClass("open");
	}

} //end:imagesToggle
	

</script>

<script type="text/javascript">



</script>

</head>
<body>
	<div id="book_popup">
		<div style="text-align: right;">
			<input type="button" value="x" style="color: red;" onclick="hide_book_popup();">
		</div>
		<div id="b_category">${ vo.b_category }</div>
		<div>
			<img class="b_image_f" src="../resources/images/${ vo.b_image_f }" onclick="imagesToggle()"> <!-- 토글하기 -->
			<img class="b_image_b" src="../resources/images/${ vo.b_image_b }" onclick="imagesToggle()">
		</div>
		
		<span>이미지를 누르시면 뒷면이 보입니다</span>

		<div>${ vo.b_name } - ${ vo.b_subtitle }</div>
		<div>${ vo.b_author }</div>
		<div>${ vo.b_content_s }</div>
		<div>정가 : <fmt:formatNumber value="${ vo.b_price }"/>원<br>
		판매가 : <fmt:formatNumber value="${ vo.b_saleprice }" />원</div>
		<div>${ vo.b_point } 적립</div>
		<div></div>
		
		<input type="button" value="바로결제"> 
		<input type="button" value="장바구니">
		
		<%-- 책 정보 --%>
		<c:forEach var=""  items="">
		<div>
			<table>
			  <tr>
				<th>저자</th>
				<td>${ vo.b_author }</td>
			  </tr>
			  
			   <tr>
				<th>출판사</th>
				<td>${ vo.b_publisher }</td>
			  </tr>
			  
			  <tr>
				<th>페이지</th>
				<td>${ vo.b_page }page</td>
			  </tr>
			  
			  <tr>
				<th>발행일</th>
				<td>${ vo.b_pubdate }</td>
			  </tr>
			  
			  <tr>
			  	 <th>ISBN</th>
			  	 <td>${ vo.b_isbn }</td>
			  </tr>
			</table>
			</div>
			</c:forEach>
			
			<table>
			  <tr>
			     <th>목차</th>
			     <td>${ vo.b_index }</td>
			  </tr>
			</table>
			  
			<table>
			  <tr>
				 <th>책소개</th>
				 <td>${ vo.b_content_l }</td>
			  </tr>
			
			</table>
		
		
	</div>	
		
		
		

</body>
</html>