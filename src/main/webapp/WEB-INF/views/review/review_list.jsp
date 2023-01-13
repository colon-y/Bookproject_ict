<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	

</style>

<script type="text/javascript">

	function insert_form(){
		
		if("${ empty user }" == "true"){
			
			if(confirm("글쓰기는 로그인 후에 가능합니다.\n로그인 하시겠습니까?")==false)return;
			
			location.href="../member/member_login_form.do";
			
			return;
		}
		
		location.href="insert_form.do";
	}

</script>

</head>
<body>

<div id="box">
	<div><img src=""></div>
	
	<div>
		<!-- 로그인 안된경우 -->
		<c:if test="${ empty user }">
		
		
		</c:if>
	</div>


</div>

<form>
	<table>
		<tr>
			<th></th>
			<th></th>
		</tr>
		
		<tr>
		</tr>
	</table>
</form>

<%-- 검색메뉴 --%>
<div>
	<select id="search_review">
	
	
	</select>
	<input id="search_review_text" value="${ param.search_review_text }">
	<input type="button" value="검색" onclick="find();">
</div>

</body>
</html>