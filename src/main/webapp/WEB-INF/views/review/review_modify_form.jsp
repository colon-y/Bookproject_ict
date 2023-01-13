<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CKEditor -->  
<script src="//cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>  
  
<script type="text/javascript">
    var toolbar = {
            toolbarGroups : [
                { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
                { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
               /*  { name: 'links', groups: [ 'links' ] },
                { name: 'insert', groups: [ 'insert' ] },
                '/',
                { name: 'clipboard', groups: [ 'clipboard', 'undo' ] }, */
                { name: 'styles', groups: [ 'styles' ] },
                { name: 'colors', groups: [ 'colors' ] },
                { name: 'tools', groups: [ 'tools' ] },
                { name: 'others', groups: [ 'others' ] },
                { name: 'about', groups: [ 'about' ] },
                { name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
                { name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
                { name: 'forms', groups: [ 'forms' ] },
            ],

            removeButtons : 'Cut,Copy,Paste,PasteText,PasteFromWord,Find,SelectAll,Scayt,Replace,Save,NewPage,ExportPdf,Print,Templates,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,CreateDiv,Blockquote,BidiLtr,BidiRtl,Language,RemoveFormat,CopyFormatting,Anchor,Flash,PageBreak,About',
        }


</script>

</head>
<body>


<input type="hidden" name="m_idx" value="${ user.m_idx }">
<input type="hidden" name="r_idx" value="${ vo.r_idx }">
  
<form>
<div></div>
  <div>
    <table>
      <tr>
        <th>작성자</th>
        <td><input name="m_name" value="${ user.m_name }" readonly="readonly"></td>
      </tr>
      
      <tr>
        <th>제목</th>
        <td></td>
      </tr> 
      
      <tr>
        <th>평점</th>
        <td></td>
      </tr>  
      
      <tr>
         <td colspan="2">
               <textarea name="b_content"  rows="" cols=""></textarea>
               <script>
		// Replace the <textarea id="editor1"> with a CKEditor
		// instance, using default configuration.
		CKEDITOR.replace( 'b_content', {
		     filebrowserUploadUrl: '${pageContext.request.contextPath}/ckeditorImageUpload.do'	
		});
			
			CKEDITOR.on('dialogDefinition', function( ev ){
		            var dialogName = ev.data.name;
		            var dialogDefinition = ev.data.definition;
		          
		            switch (dialogName) {
		                case 'image': //Image Properties dialog
				              //dialogDefinition.removeContents('info');
				              dialogDefinition.removeContents('Link');
				              dialogDefinition.removeContents('advanced');
				              break;
			    }
			 });
	        </script>
               
          </td>
      </tr>
      
      <tr>
         <td colspan="2" align="center">
              <input class="btn btn-primary"  type="button"  value="수정완료"
                     onclick="send(this.form);">
              <input class="btn btn-success"  type="button"  value="뒤로가기"
                     onclick="location.href='list.do';">
         </td>
      </tr>
    
    
    </table>
  </div>
</form>

</body>
</html>