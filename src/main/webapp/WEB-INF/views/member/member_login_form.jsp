<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	#box{
		width: 400px;
		margin: auto;
		margin-top: 100px;
	}

</style>

<script type="text/javascript">
	function send(f){
	  
	  var m_id  = f.m_id.value.trim();
	  var m_pwd = f.m_pwd.value.trim();
	  
	  if(m_id==''){
		  alert('아이디를 입력하세요');
		  f.m_id.value='';
		  f.m_id.focus();
		  return;
	  }
	  
	  if(m_pwd==''){
		  alert('비밀번호를 입력하세요');
		  f.m_pwd.value='';
		  f.m_pwd.focus();
		  return;
	  }
	  
	  f.action = "login.do"; //MemberLoginAction
	  f.submit();
} 
		
</script>

</head>
<body>

<form>
	 <div id="box">
	    <div class="panel">
	      <div class="panel-heading"><h5>로그인</h5></div>
	      <div class="panel-body">
	          <table class="table">
	             <tr>
	                <th>ID</th>
	                <td><input name="m_id"  value="${ param.m_id }"></td>
	             </tr>
	             <tr>
	                <th>비밀번호</th>
	                <td><input type="password" name="m_pwd"></td>
	             </tr>
	             
	             <tr>
	                <td colspan="2" align="center">
	                   <input  class="btn btn-primary" type="button"  value="로그인" 
	                           onclick="send(this.form);" >
	                   <input  class="btn btn-success" type="button"  value="메인화면"  
	                           onclick="location.href='../main/main.do';">
	                </td>
	             </tr>
	             
	          </table>
	      </div>
	    </div>
	 </div>
</form>

</body>
</html>