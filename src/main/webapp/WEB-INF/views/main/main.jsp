<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="../resources/css/main.css">

<style type="text/css">
	#header{
		
	}
	
	
	#footer{
		
	}
	
</style>

<script type="text/javascript">


</script>




</head>
<body>




	<div id="main_box">
	  <div id="header">
	    <%@include file="../header/header.jsp" %>
	  </div>
	  
	  <div id="aside_right">
	    <%@include file="../aside/main_aside_right.jsp" %>
	  </div>
	  
	  <div id="content">
	   
	    <c:if test="${ empty param.menu }">
	      <%@include file="../book/book_list.jsp" %>
	    </c:if>
	    
	    <c:if test="${ param.search_list }">
	      <%@include file="../book/book_search_list.jsp" %>
	    </c:if>
	  
	    <c:if test="${ param.pay_cart_list }">
	      <%@include file="../pay/pay_cart_list.jsp" %>
	    </c:if>
	    
	    <c:if test="${ param.pay_payment }">
	      <%@include file="../pay/pay_payment.jsp" %>
	    </c:if>
	    
	    <c:if test="${ param.review_list }">
	      <%@include file="../review/review_list.jsp" %>
	    </c:if>
	    
	    <c:if test="${ param.book_ranking }">
	      <%@include file="../book/book_ranking.jsp" %>
	    </c:if>
	  
	  </div>
	  
	  <div id="footer">
	    <%@include file="../footer/footer.jsp" %>
	  </div>
	  
	</div>
</body>
</html>