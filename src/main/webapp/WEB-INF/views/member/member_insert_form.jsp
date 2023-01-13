<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

	function find(){
		
		var width = 600;
		var height = 600;
		
		new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	       		
	            $("#m_zipcode").val(data.zonecode);
	        
	            $("#m_addr").val(data.address);
	        
	        
	        }
	    }).open(
	    		
	    );
		
	} //end:find


</script>

<script type="text/javascript">

var regular_id = /^[a-zA-Z0-9]{3,16}$/;

	$(document).ready(function(){
		
		$("#m_id").keyup(function(event){
			console.log(m_id);
			
			if(regular_id.test(m_id)==false){
				
				$("#mi_id").html("ID는 영문자/숫자 조합의 3~16자리만 가능합니다.")
				           .css();
				$("#member_register").attr("disabled", true);s
				return;
			}
			
			$.ajax({
				url      : 'check_id.do',
				data     : {'m_id', m_id},
				dataType : 'json',
				
				
				
			})
			
			
			
		})
		
	});

</script>

<script type="text/javascript">

	function send(f){
		
		var m_id       = f.m_id.value.trim();
		var m_pwd      = f.m_pwd.value.trim(); 
		var m_name     = f.m_name.value.trim(); 
		var m_tel      = f.m_tel.value.trim(); 
		var m_zipcode  = f.m_zipcode.value.trim(); 
		var m_addr     = f.m_addr.value.trim(); 
		var m_nickname = f.m_nickname.value.trim(); 
		
		if(m_id==''){
			alert('ID를 입력하세요.');
			f.m_id.value='';
			f.m_id.focus();
			return;
		}
		
		if(m_pwd==''){
			alert('비밀번호를 입력하세요.');
			f.m_id.value='';
			f.m_id.focus();
			return;
		}
		
		if(m_name==''){
			alert('이름을 입력하세요.');
			f.m_name.value='';
			f.m_name.focus();
			return;
		}
		
		if(m_tel==''){
			alert('전화번호를 입력하세요.');
			f.m_tel.value='';
			f.m_tel.focus();
			return;
		}
		
		if(m_zipcode==''){
			alert('우편번호를 입력하세요.');
			f.m_zipcode.value='';
			f.m_zipcode.focus();
			return;
		}
		
		if(m_addr==''){
			alert('주소를 입력하세요.');
			f.m_addr.value='';
			f.m_addr.focus();
			return;
		}
		
		if(m_nickname==''){
			alert('닉네임을 입력하세요.');
			f.m_nickname.value='';
			f.m_nickname.focus();
			return;
		}
		
		f.action = "insert.do";
		f.submit();
		
	} //end:send

</script>

</head>
<body>

<form>
	<div id="box">
		<div class="panel">
			<div class="panel-heading">
			  <div class="panel-body">
			    <table class="">
			      <tr>
			        <th>ID</th>
			        <td><input type="text" id="m_id" name="mi_id"><input type="button" value="중복검사" onclick="check();"></td>
			      </tr>
			      
			      <tr>
			        <th>비밀번호</th>
			        <td><input type="text" name="m_pwd"></td>
			      </tr>
			      
			      <tr>
			        <th>이름</th>
			        <td><input type="text" name="m_name"></td>
			      </tr>
			      
			      <tr>
			        <th>전화번호</th>
			        <td><input type="text" name="m_tel"><input type="button" value="중복검사" onclick="check();"></td>
			      </tr>
			      
			      <tr>
			        <th>우편번호</th>
			        <td>
			        	<input name="m_zipcode">
			        	<input type="button" value="주소검색" onclick="find();">
			        </td>
			      </tr>
			      
			      <tr>
			        <th>주소</th>
			        <td><input name="m_addr"></td>
			      </tr>
			      
			      <tr>
			        <th>닉네임</th>
			        <td><input type="text" name="m_nickname"></td>
			      </tr>
			      
			      <tr>
			        <th>자기소개</th>
			        <td><textarea name="m_intro"></textarea></td>
			      </tr>
			      
			      <tr>
			        <td>
			          <input type="button" value="회원가입" id="member_register" disabled="disabled" onclick="send(this.form);">
			          <input type="button" value="메인화면" onclick="location.href='${ pageContext.request.contextPath }'/main/main.do';">
			        </td>
			      </tr>
			      

			    </table>
			  </div>
			</div>
		</div>
	</div>
</form>

</body>
</html>