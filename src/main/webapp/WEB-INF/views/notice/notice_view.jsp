<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<div>
<table>
  <tr>
    <th>제목</th>
    <td>${ vo.n_subject }</td>
  </tr>
  
  <tr>
    <th>작성자</th>
    <td>${ vo.m_nickname }</td>
  </tr>
  
  <tr>
    <th>내용</th>
    <td><textarea></textarea></td>
  </tr>
  
  <tr>
    <th>첨부파일</th>
    <td>${ vo.n_attach }</td>
  </tr>


</table>
</div>

   <div>
	   <c:if test="${ user.m_grade eq 관리자 }">
	       <input class="btn btn-info"    type="button"  value="수정하기" 
	              onclick="modify_form();">
	       <input class="btn btn-danger"  type="button"  value="삭제하기" 
	              onclick="del();">
       </c:if>
   </div>

</body>
</html>