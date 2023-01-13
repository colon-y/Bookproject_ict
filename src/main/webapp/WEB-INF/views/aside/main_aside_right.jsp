<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

	#cart{
	  position: relative;
	  width: 50px;
	  box-sizing: content-box;
	  border-width: 50px 18px 0;
      border-style: solid;
      border-color: pink transparent;
    }
    #cart:before {
      content: "";
      position: absolute;
      height: 0;
      width: 0;
      top: -85px;
      left: -18px;
      border-width: 0 45px 35px;
      border-style: solid;
      border-color: transparent transparent pink;
    }
	#aside_form{
		float: right;
	}


</style>

<script type="text/javascript">



</script>


</head>
<body>

<div id="aside_form">
<div id="clear">원래대로</div>

<div id="cart"><a href="../pay/pay_cart_list.do">장바구니</a></div>

<div id="payment"><a href="../pay/pay_payment.do">바로결제</a></div>

<div id="review">리뷰보기</div>

<!-- 선택된 책이 있을 때는 리뷰 리스트 전체 보여주기

선택된 책이 있을 때는 그 책에 관련된 리뷰 리스트 보여주기

book_popup_view.do?b_idx=${ vo.b_idx }

-->

<div id="ranking"><a href="../book/book/ranking.do">순위보기</a></div>

</div>

</body>
</html>