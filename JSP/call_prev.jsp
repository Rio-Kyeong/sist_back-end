<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info ="다양한 방법으로 call.jsp를 호출하는 페이지"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=" UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

<!-- bootstrap -->
<link href="http://localhost/jsp_prj/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btnPost").addEventListener("click", sendPost); 		
	document.getElementById("jfFrmGet").addEventListener("click", sendGet); 		
}

function sendPost(){
	var obj = document.frm;
	alert("javascript에서 POST전송");
	obj.submit();
}

function sendGet(){
	var obj = document.jsFrmGet; //폼객체를 얻고
	alert("javascript에서 GET전송");
	obj.submit();//얻어낸 폼객체의 submit()를 호출
}

$(function(){
	$("#useJqueryPost").click(function() {
		alert("jQuery에서 POST전송");
		$("#postFrm").submit();	
		
	});
	
	$("#href").click(function() {
		alert("location.href로 요청");
		window.location.href = "call.jsp";	
	});
	
	$("#replace").click(function() {
		alert("location.replace로 요청");
		window.location.replace("call.jsp");	
	});
	
	$("#jqFrmGetBtn").click(function() {
		alert("jQuery에서 submit 요청");
		$("#jqFrmGet").submit();	
	});
	
});

</script>
</head>
<body>
<div>
<div>
<div class="alert alert-success" role="alert">
	<strong>POST방식으로 JSP 요청</strong><br/>
	1.submit으로 요청<br/><!-- javascript에서 유효성 검증이 실패하더라도 alert창 뜨고 전송된다. -->
	<form action="call.jsp" method="post">
		<input type="submit" value="전송" class="btn btn-default"/>	
	</form>	
	2.javaScript에 submit()요청<br/>
	<form action="call.jsp" method="post" name="frm">
		<input type="button" value="전송" id="btnPost" class="btn btn-default"/>	
	</form>	
	3.jQuery에서 submit()요청<br/>
	<form action="call.jsp" method="post" id ="postFrm">
		<input type="button" value="전송" id="useJqueryPost" class="btn btn-default"/>	
	</form>	
</div>
<br/>
<div class="alert alert-danger" role="alert">
	<strong>GET 방식으로 JSP 요청</strong><br/>
	1. link 사용 <br/>
	<a href = "call.jsp">GET방식요청</a><br/>
	2. location객체 사용 <br/>
	<a href = "#" id ="href">href</a><br/>
	<button type="button" id="replace" class="btn btn-danger">replace</button><br/>
	3. &lt;form&gt; 태그를 사용한 submit 요청 <br/> <!-- javaScript에서 유효성검증을 실패하더라도 서버로 요청을 보낸다 -->
	<form action="call.jsp" method="get">  <!-- 기본값은 get이기 때문에 쓰지 않아도된다. -->
		<input type="submit" value="GET전송" class="btn btn-default"/><br/>	
	</form>	
	4. JavaScript
	<form action="call.jsp" method="get" name ="jsFrmGet">
	<input type="button" value="GET전송" id="jfFrmGet" class="btn btn-default"/>
	</form>
	5. jQuery
	<form action="call.jsp" method="get" id ="jqFrmGet">
	<input type="button" value="GET전송" id="jqFrmGetBtn" class="btn btn-default"/>
	</form>
	


</div>

</div>
</div>
</body>
</html>