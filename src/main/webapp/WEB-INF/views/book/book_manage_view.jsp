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
			<td>${ vo.b_idx }</td>
		</tr>
		
		<tr>
			<th>도서명</th>
			<td>${ vo.b_name }</td>
		</tr>
			
		<tr>
			<th>ISBN</th>
			<td>${ vo.b_isbn }</td>
		</tr>
		
		<tr>
			<th>카테고리</th>	
			<td>${ vo.b_category }</td>
		</tr>
		
		<tr>
			<th>저자</th>	
			<td>${ vo.b_author }</td>
		</tr>
		
		<tr>
			<th>출판사</th>	
			<td>${ vo.b_publisher }</td>
		</tr>
		
		<tr>
			<th>목차</th>	
			<td>${ vo.b_index }</td>
		</tr>
		
		<tr>
			<th>발행일</th>	
			<td>${ vo.b_regdate }</td>
		</tr>
		
		<tr>
			<th>단가</th>	
			<td>${ vo.b_price }</td>
		</tr>
		
		<tr>
			<th>할인가</th>	
			<td>${ vo.b_saleprice }</td>
		</tr>
		
		<tr>
			<th>재고수량</th>	
			<td>${ vo.b_stock }</td>
		</tr>
		
		<tr>
			<th>도서설명(짧은)</th>	
			<td></td>
		</tr>
		
		<tr>
			<th>도서설명(긴)</th>	
			<td></td>
		</tr>
		
		<tr>
			<th>도서이미지(앞)</th>	
			<td></td>
		</tr>
		
		<tr>
			<th>도서이미지(뒤)</th>	
			<td></td>
		</tr>
		
		<tr>
			<th>구매포인트</th>	
			<td></td>
		</tr>
		
		<tr>
			<th>페이지수</th>	
			<td></td>
		</tr>
		
		<tr>
			<th>부제목</th>	
			<td></td>
		</tr>
		
		<tr>
			<td><input type="button" value="도서수정"></td>
		</tr>
	</table>
</div>


</body>
</html>