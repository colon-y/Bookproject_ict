<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	/* 로그인상태 체크 */
	if("${ empty sessionScope.user}" =="true"){
		   
		   if(confirm("장바구니담기는\n로그인하신후 이용가능합니다\n로그인 하시겠습니까?")==false) return;
		   
		   location.href="../member/login_form.do?url=" + encodeURIComponent(location.href);
		   
		   return;
	}

</script>

<script type="text/javascript">

   var regular_cnt = /^[0-9]{1,3}$/;
   
   function modify(c_idx){
	   
	   //수정할 수량
	   var c_cnt = document.getElementById("c_cnt_" + c_idx).value;
	   //var c_cnt =  $("#c_cnt_"+c_idx).val();
	   
	   if(regular_cnt.test(c_cnt)==false){
		   alert('수량은 1~3자리 숫자만 입력하세요');
		   f.c_cnt.value='1';
		   f.c_cnt.focus();
		   return;
	   }
	   
	   location.href = "cart_update.do?c_idx=" + c_idx + "&c_cnt=" + c_cnt;
	   
	   
	   
   }
   
   
   function del(c_idx){
	   
	   if(confirm("정말 삭제하시겠습니까?")==false)return;
	   
	   location.href="cart_delete.do?c_idx=" + c_idx; //CartDeleteAction
	   
   }
   
   function payment(f){
	   
	   //체크여부...
	   
	   
	   f.submit();
   }


</script>


</head>
<body>
장바구니


<input type="button" id="store" value="선택상품삭제">

<hr>

<table>
	<tr>
	  <th>상품명</th>
	  <th>가격</th>
	  <th>수량</th>
	  <th>보관/삭제</th>
	</tr>
	
	<tr>
	  <td>${ b_name }<br>- ${ b_subtitle }</td>
	  <td>${ b_price }<br>
	      ${ b_saleprice }<br>
	      ${ b_point }
	  </td>
	  <td>${ pay_count }</td>
	  <td><%-- 수량 조정 폼 --%></td>
	</tr>


</table>

<hr>

<table>


</table>


</body>
</html>






