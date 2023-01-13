<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.mins.js"></script>

<style type="text/css">
	*{
	
	}
	
	#book_box{
		width: 800px;
		height: 200px;
		
	
	}
	
	#list_image{
		width: 110px;
		height: 200px;
		margin-right: 5px;
	}
	


</style>

<script type="text/javascript">
	$(document).ready(function(){
		
		setInterval(moveImage, 5000);
	});
	
	function moveImage(){
		$(".book_list").animate(
			{"left":"-=100"}, 3000, function(){
				
				var left = parseInt($(".book_list").css("left"));
					console.log(left);
					if(left<-910){
						
						$(".book_list").css("left", "0px");
					}
			});		
		)
	}//end:moveImage
	
</script>

<script type="text/javascript">
	
	var global b_idx;
	
	function book_popup_view(b_idx){
		
		global b_idx = b_idx;
		
		book_view();
		
		$.ajax({
			url      : 'main.do',
			data     : {'b_idx': b_idx},
			dataType : 'json',
			success  : function(res_data){
				$("#list_image").attr('src','../resources/upload/' + res_data.b_image_f);
				$("#b_name").html(res_data.b_name);
				$("#b_content_s").html(res_data.b_content_s);
			},
			error    : function(err){
				alert(err.responseText);
			}
			
		}); //end:ajax
		
		
	} //end: book_view

</script>

</head>
<body>

<!-- 최신순 정렬, 인기순 정렬 -->

	<div id="book_box">
	  <span>금주의 책</span>
			<div class="book_list">
			  <ul>
			  <c:forEach var="vo" items="${ list }">
			    <li>
			      <img src="../resource/upload/${ vo.b_image_f }"  id="list_image" onclick="book_popup_view('${ vo.b_idx }')"><br>
			      <div id="list_name"><a href="${ vo.b_name }"><b>{ vo.b_name }"<br>👆 자세히 보기</b></a></div>
			    </li>
			  </c:forEach>
			  </ul>
			</div>
		
	</div>


</body>
</html>