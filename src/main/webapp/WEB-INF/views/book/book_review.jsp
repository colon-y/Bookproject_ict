<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<table>
	  <tr>
	    <th>작성일자</th>
	    <th>제목</th>
	    <th>평점</th>
	    <th>작성자</th>
	  </tr>
	  
	  <!-- 리뷰 5개씩 보여주기 -->
	  <tr><a href="#"></a><!-- 누르면 해당 리뷰 열리기 -->
	  	<th></th>
	  	<td></td>
	  	<th></th>
	  	<th></th>
	  </tr>
	
	</table>
</div>


<!-- 페이징 메뉴 -->
<div style="text-align: center; font-size: 16px;">
	${ pageMenu }
</div>

</body>
</html>