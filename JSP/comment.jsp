<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info =" JSP 주석"%>
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

</script>
</head>
<body>
<div>
JSP주석 자바코드로 생성자체가 안됨.
<%-- <% 
	//JSP에서 Java method내의 코드를 작성할 때 사용 
	//String str = ""; //앗! 이건뭐지?
	//java주석은 Java코드로 생성되나 실행이 되지 않는다.
%> --%>
<% String test = "이 코드는 특정 일자 이후에 실행되어야 합니다."; %>
<!-- 코드가 실행되나 눈에 보이지 않는 상태 <%= test %> -->
<%-- <%= test %> --%>
</div>
</body>
</html>