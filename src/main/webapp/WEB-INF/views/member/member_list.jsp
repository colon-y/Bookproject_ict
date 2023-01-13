<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">



</style>

</head>
<body>

<div id="box">
	<h1 id="title">회원목록</h1>
	
	<form>
	  <table>
	  <c:forEach var="vo" items="${ list }">
	    <tr>
	      <th>번호</th>
	      <th>이름</th>
	      <th>ID</th>
	      <th>전화번호</th>
	      <th>회원등급</th>
	      <th>탈퇴여부</th>
	    </tr>
	    
	    <tr onclick="location.href='member_view.do';">
	      <td>{ vo.m_idx }</td>
	      <td>{ vo.m_name }</td>
	      <td>{ vo.m_id }</td>
	      <td>{ vo.m_tel }</td>
	      <td>{ vo.m_grade }</td>
	      <td>{ vo.m_leave }</td>
	    </tr>
	  </c:forEach>
	  </table>
	</form>
	

	<select name="member">
       		<option value="all">전체</option>
       		<option value="kor">이름</option>
       		<option value="kor">ID</option>
    </select>

	<!-- 페이징처리 -->

</div>
	
	
</body>
</html>