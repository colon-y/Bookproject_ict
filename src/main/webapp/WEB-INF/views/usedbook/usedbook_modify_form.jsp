<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

var regular_price = /^[0-9]{1,}$/;

function send(f)
{
   
   var b_category  	= f.b_category.value;
   var b_name   	= f.b_name.value.trim;
   var b_subtitle   = f.b_subtitle.value.trim;
   var b_isbn    	= f.b_isbn.value.trim;
   var b_author     = f.b_author.value.trim;
   var b_publisher	= f.b_publisher.value.trim;
   var b_index      = f.b_index.value;
   var b_pubdate    = f.b_pubdate.value;
   var b_price 		= f.b_price.value.trim;
   var b_saleprice 	= f.b_saleprice.value.trim;
   var b_stock      = f.b_stock.value;
   var b_content 	= f.b_content.value;
   var b_photo_f 	= f.b_photo_f.value;
   var b_photo_b	= f.b_photo_b.value;
   var b_point      = f.b_point.value.trim;
   var b_page       = f.b_page.value.trim;
   var u_storedate  = f.u_storedate.value;
   var u_status     = f.u_status.value;
   
   //입력된 값 체크....
   if(b_category==''){
	   alert('카테고리를 선택하세요');
	   return;
   } 
   
   if(b_name==''){
	   alert('도서명을 입력하세요');
	   f.b_name.value='';
	   f.b_name.focus();
	   return;
   }
   
   if(b_subtitle==''){
	   alert('부제목을 입력하세요');
	   f.b_subtitle.value='';
	   f.b_subtitle.focus();
	   return;
   }
   
   if(b_isbn==''){
	   alert('isbn을 입력하세요');
	   f.b_isbn.value='';
	   f.b_isbn.focus();
	   return;
	   }
   
   if(b_author==''){
	   alert('저자를 입력하세요');
	   f.b_company.value='';
	   f.b_company.focus();
	   return;
   }
    
   if(b_publisher==''){
	   alert('출판사를 입력하세요');
	   f.b_publisher.value='';
	   f.b_publisher.focus();
	   return;
   }
   
   if(b_index==''){
	   alert('목차를 입력하세요');
	   f.b_index.value='';
	   f.b_index.focus();
	   return;
   }
   
   if(b_pubdate==''){
	   alert('발행일을 입력하세요');
	   f.b_pubdate.value='';
	   f.b_pubdate.focus();
	   return;
   }
   
   if(regular_price.test(b_price)==false){
	   alert('도서가격은 1자리 이상의 숫자를 입력하세요');
	   f.b_price.value='';
	   f.b_price.focus();
	   return;
   }
   
   if(regular_price.test(b_saleprice)==false){
	   alert('도서할인가격은 1자리 이상의 숫자를 입력하세요');
	   f.b_saleprice.value='';
	   f.b_saleprice.focus();
	   return;
   }
   
   if(regular_price.test(b_stock)==false){
	   alert('재고수량은 1자리 이상의 숫자를 입력하세요');
	   f.b_stock.value='';
	   f.b_stock.focus();
	   return;
   }
   
   if(b_content_s==''){
	   alert('도서설명(짧은)을 작성하세요');
	   f.b_content_s.value='';
	   f.b_content_s.focus();
	   return;
   }
   
   if(b_content_l==''){
	   alert('도서설명(긴)을 작성하세요');
	   f.b_content_l.value='';
	   f.b_content_l.focus();
	   return;
   }
   
   if(b_photo_f==''){
	   alert('도서이미지(앞면)를 선택하세요');
	   return;
   }
   
   if(b_photo_b==''){
	   alert('도서이미지(뒷면)를 선택하세요');
	   return;
   }
   
   if(regular_price.test(b_point)==false)
	   alert('구매포인트는 1자리 이상의 숫자를 입력해주세요');
	   f.b_point.value='';
	   f.b_point.focus();
	   return;
   }
   
   if(regular_price.test(b_page)==false){
	   alert('페이지는 1자리 이상의 숫자를 입력해주세요');
	   f.b_page.value='';
	   f.b_page.focus();
	   return;
   }
   
   if(regular_price.test(b_page)==false){
	   alert('입고일자는 8자리 숫자로 입력해주세요');
	   f.b_page.value='';
	   f.b_page.focus();
	   return;
   }
   
   if(b_page==''){
	   alert('책 상태를 선택해주세요');
	   return;
   }
   
   
   f.action="insert.do";// usedbookInsertAction
   
   f.submit();
   
}
</script>

</head>
<body>


<form name="f" method="post" action="insert.do"    enctype="multipart/form-data"> 
<table align="center" width="600" border="1" 
    style="border-collapse:collapse;font-size:8pt" bordercolor="navy"
    cellpadding="2" cellspacing="0">
    <tr>
        <td>도서category</td>
        <td><select name="category">
        		<option value="">카테고리 선택</option>
        		<option value="yet">미정</option>
        		<option value="genre">장르소설</option>
        		<option value="comics">만화</option>
        		<option value="it">IT/컴퓨터/이스포츠</option>
        		<option value="study">공부/참고서/문제집</option>
        		<option value="etc">기타</option>
        </select></td>
    </tr>
    <tr>
        <th>중고도서번호</th>
        <td></td>
    </tr>
    
    <tr>
        <th>도서번호</th>
        <td></td>
    </tr>
    <tr>
        <th>도서명</th>
        <td><input name="b_name" type="text" ></td>
    </tr>
    <tr>
    	<th>부제목</th>
    	<td><input name="b_subtitle" type="text"></td>
    </tr>
    <tr>
        <th>ISBN</th>
        <td><input name="b_isbn" type="text" ></td>
    </tr>
    <tr>
        <th>저자</th>
        <td><input name="b_author" type="text" ></td>
    </tr>
    <tr>
        <th>출판사</th>
        <td><input name="b_publisher" type="text" ></td>
    </tr>
    <tr>
        <th>목차</th>
        <td><TEXTAREA name="b_index" rows="100" cols="50"></TEXTAREA></td>
    </tr>
    <tr>
        <th>발행일</th>
        <td><input name="b_pubdate" type="text" ></td>
    </tr>
    <tr>
        <th>도서가격</th>
        <td><input name="b_price" type="text" ></td>
    </tr>
    <tr>
        <th>도서할인가격</th>
        <td><input name="b_saleprice" type="text" ></td>
    </tr>
    <tr>
        <th>재고수량</th>
        <td><input name="b_stock" type="text" ></td>
    </tr>    
    <tr>
        <th>도서설명(짧은)</th>
        <td><TEXTAREA name="b_content_s" rows="5" cols="50"></TEXTAREA></td>
    </tr>
    <tr>
        <th>도서설명(긴)</th>
        <td><TEXTAREA name="b_content_l" rows="100" cols="50"></TEXTAREA></td>
    </tr>
    <tr>
        <th>책사진(앞면)</th>
        <td><input type="file" name="b_photo_f">
    </tr>
    <tr>
        <th>책사진(뒷면)</th>
        <td><input type="file" name="b_photo_b">
    </tr>
    <tr>
        <th>구매포인트</th>
        <td><input name="b_company" type="text" ></td>
    </tr>
    <tr>
        <th>페이지수</th>
        <td><input name="b_page" type="text" ></td>
    </tr>
    <tr>
        <th>입고일자</th>
        <td><input name="u_storedate" type="text" ></td>
    </tr>
    <tr>
        <th>책상태</th>
        <td><select name="status">
        		<option value="">상태 선택</option>
        		<option value="vg">최상</option>
        		<option value="g">상</option>
        		<option value="n">중</option>
        </select></td>
    </tr>
    
    <tr>
        <td colspan="2" align="center">
            <input type="button" value="등록하기" onclick="send(this.form);" >
            <input type="button" value="뒤로가기" onclick="location.href='../manage_book.do';" >
        </td>
    </tr>
</table>
</form>

</body>
</html>