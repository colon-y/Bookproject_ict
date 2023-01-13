<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>



개인정보

<input type="button" value="개인정보수정" onclick="modify(this.form);">

<div>
  <table>
    <tr>
      <th>회원등급</th>
      <td><input name="회원등급" value="${ vo.m_grade }" readonly="readonly"></td>
    </tr>
    
    <tr>
      <th>ID</th>
      <td><input name="ID" value="${ vo.m_id }" readonly="readonly"></td>
    </tr>
    
    <tr>
      <th>비밀번호</th>
      <td><input type="password" value="${ vo.m_pwd }" readonly="readonly"></td>
    </tr>
    
    <tr>
      <th>이름</th>
      <td><input type="text" value="${ vo.m_name }" readonly="readonly"></td>
    </tr>
    
    <tr>
      <th>전화번호</th>
      <td><td><input type="text" value="${ vo.m_name }" readonly="readonly"></td>
    </tr>
    
    <tr>
      <th>주소</th>
      <td><input type="text" value="${ vo.m_addr }" readonly="readonly"></td>
    </tr>
    
    <tr>
      <th>닉네임</th>
      <td></td>
    </tr>
    
    <tr>
      <th>포인트</th>
      <td></td>
    </tr>
    
    <tr>
      <th>가입일자</th>
      <td></td>
    </tr>
    
	<tr>
      <th>자기소개</th>
      <td></td>
    </tr>


  </table>
</div>
	
	<div>
		<table>
			<tr>
		<!-- 주문내역. pay_idx 중에 m_idx와 같은 것 -->
				<th>주문일자</th>
				<th>주문번호</th>
				<th>주문상품</th>
				<th>주문가격</th>
				<th>비고</th>
			</tr>
			
			<c:forEach var="" items="">
			<tr>
				<th>${ vo.pay_paydate }</th>
				<th>${ vo.pay_idx }</th>
				<td>${ vo.pay_name }</td>
				<th>${ vo.pay_amount }</th>
				<th>${ vo.pay_note }</th>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<div>
		<table>
		<!-- 리뷰내역 -->
		</table>
	</div>

<c:if test="${ user.m_grade eq '관리자' }">
  <input type="button" value="탈퇴처리" onclick="resign(this.form);">
</c:if>
	

</body>
</html>