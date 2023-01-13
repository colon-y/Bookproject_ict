<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="vo" items="${ list }">
<div id="info_left">
<div><img src="../resources/upload/${ vo.b_image_f }"></div>
<div>${ vo.b_name } - ${ vo.b_subtitle }</div>
<div>${ vo.b_author }</div>
</div>

<div id="info_right">
<table>
<tr>

</tr>

<tr>
<td>${ vo.b_author } 지음 / ${ vo.b_publihser } / str.substring(1,4(${ vo.b_pubdate }))</td>
<td>${ vo.b_price } -> <b><font id="saleprice">${ vo.b_saleprice }</font></b> / 포인트 ${ vo.b_point }P 적립</td>
<td></td>
</tr>

</table>
</div>

<hr>

<table>

</table>

<hr>

<table>

</table>

<hr>

<table>

</table>

<hr>

<table>

</table>

<hr>

</c:forEach>

<div style="text-align: center; font-size: 20px;">
	${ pageMenu }
</div>

</body>
</html>