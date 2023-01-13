<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<div>
	<table>
		<tr>
		  <th>제목</th>
		  <td></td>
		</tr>
		
		<tr>
		  <th>내용</th>
		  <td><textarea></textarea></td>
		</tr>
		
		<tr>
		  <th>첨부파일</th>
		  <td></td>
		</tr>

	</table>
</div>


</body>
</html>