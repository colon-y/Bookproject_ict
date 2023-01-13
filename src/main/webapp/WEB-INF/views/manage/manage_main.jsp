<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	
	<input type="button" id="manage_book" value="도서정보관리" onclick="location.href='manage_book.do';">
	
	<input type="button" id="manage_usedbook" value="중고도서정보관리" onclick="location.href='manage_usedbook.do';"><br>
	
	<input type="button" id="manage_review" value="도서재고관리" onclick="location.href='../stock/stock_list.do';">
	
	<input type="button" id="manage_order" value="주문관리" onclick="location.href='manage_order.do';"><br>

	<input type="button" id="manage_member" value="회원관리" onclick="location.href='member_list.do';">
	
	<input type="button" id="manage_review" value="리뷰관리" onclick="location.href='review_list.do';"><br>

	
</div>

</body>
</html>