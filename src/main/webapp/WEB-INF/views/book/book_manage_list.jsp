<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
      <th>도서번호</th>
      <th>도서명</th>
      <th>ISBN</th>
      <th>출판사</th>
    </tr>
    
    <c:forEach var="vo" items="${ list }">
	    <tr>
	      <td>${ vo.b_idx }</td>
	      <td>${ vo.b_name }</td>
	      <td>${ vo.b_isbn }</td>
	      <td>${ vo.b_publisher }</td>
	    </tr>
    </c:forEach>
    
  </table>
</div>

</body>
</html>