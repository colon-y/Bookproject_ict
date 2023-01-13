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

<%@include file="member_pwd_check.jsp" %>

<form>
	<div id="box">
		<div class="panel">
			<div class="panel-heading">
			  <div class="panel-body">
			    <table class="">
			      <tr>
			        <th>ID</th>
			        <td><input name="m_id"></td>
			      </tr>
			      
			      <tr>
			        <th>비밀번호</th>
			        <td><input name="m_pwd"></td>
			        <td><input type="button" value="비밀번호 변경하기"></td>
			      </tr>
			      
			      <tr>
			        <th>이름</th>
			        <td><input name="m_name"></td>
			      </tr>
			      
			      <tr>
			        <th>전화번호<input type="button" value="중복검사"></th>
			        <td><input name="m_tel"></td>
			      </tr>
			      
			      <tr>
			        <th>우편번호</th>
			        <td><input name="m_zipcode"></td>
			      </tr>
			      
			      <tr>
			        <th>주소</th>
			        <td><input name="m_addr"></td>
			      </tr>
			      
			      <tr>
			        <th>닉네임</th>
			        <td><input name="m_nickname"></td>
			      </tr>
			      
			      <c:if test="${ user.m_grade eq '관리자' }">
			      <tr>
			      	<th>회원등급</th>
			      	<td>
			      		<select id="m_grade" name="m_grade">
			      			<option value="브론즈"></option>
			      			<option value="실버"></option>
			      			<option value="골드"></option>
			      			<option value="관리자"></option>
			      		</select>
			      </tr>
			      </c:if>
			      
			      <tr>
			      	<th>가입일자</th>
			      	<td><input name="m_regdate" readonly="readonly"></td>
			      	<c:if test="${ user.m_grade eq '관리자' }"><td><input name="m_regdate"></td></c:if>
			      </tr>
			      
			      <tr>
			      	<th>포인트</th>
			      	<td><input name="m_point" readonly="readonly"></td>
			      	<c:if test="${ user.m_grade eq '관리자' }"><td><input name="m_regdate"></td></c:if>
			      </tr>
			      
			      
			      <tr>
			        <th>자기소개</th>
			        <td><input name="m_intro"></td>
			      </tr>
			      
			      <tr>
			        <td>
			          <input type="button" value="정보수정" disabled="disabled" onclick="send(this.form);">
			          <input type="button" value="메인화면" onclick="location.href='${ pageContext.request.contextPath }'/main/list.do';">
			        </td>
			      </tr>
			      

			    </table>
			  </div>
			</div>
		</div>
	</div>
</form>

<input type="button" value="회원탈퇴" onclick="">

</body>
</html>