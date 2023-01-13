<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="notice_title"><p>공지사항</p></div>
<div>
	<table>
		<tr>
			<th>공지번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일자</th>
		</tr>
		
		<c:forEach var="vo" items="{ list }">
		<tr>
			<td>{ vo.n_idx }</td>
			<td>{ vo.m_nickname }</td>
			<td>{ vo.n_subject }</td>
			<td>{ vo.n_regdate }</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>