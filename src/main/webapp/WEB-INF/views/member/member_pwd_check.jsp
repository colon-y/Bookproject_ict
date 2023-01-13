<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function send(f){
		var pwd = f.pwd.value.trim();
		
		if(pwd==''){
			alert('비밀번호를 입력하세요');
			f.pwd.value='';
			f.pwd.focus();
			return;
		}else if('${user.m_pwd}'!=pwd){
			alert('비밀번호가 틀렸습니다')
			return;
		}else{
			location.href='../member_resign.do';
		}
		
	} //end:send

</script>

</head>
<body>
  
  <form>
    <div>
      <table>
        <caption id="check_title">탈퇴 확인을 위해<br>한번 더 비밀번호를 입력해주세요</caption>
          <tr>
            <th colspan="2">비밀번호를 입력해주세요</th>
          </tr>
          
          <tr>
            <td colspan="2"><input type="password" id="pwd"></td>
          </tr>
          
          <tr>
            <td><input type="button" id="check_btn1" value="확인" onclick="send(this.form);"></td>
            <td><input type="button" id="check_btn2" value="뒤로가기" onclick=""></td>
          </tr>
      </table>
    </div>
  </form>

</body>
</html>