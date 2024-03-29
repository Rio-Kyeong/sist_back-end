<!-- 하나의 지시지에 여러개의 속성을 사용 -->	
<%@page import="java.util.Random"%>	
<%@page import="java.text.DecimalFormat, java.util.Calendar"%> <!-- ,(콤마)로 구분하여 import -->	
<%@ page language="java" contentType="text/html; charset=UTF-8"		
    pageEncoding="UTF-8" info = "페이지 지시자 연습"%>	
 <!-- 하나의 지시자에 한개의 속성을 사용 
 	페이지 지시자는 필요한 만큼선언
 -->
 <%@page buffer="8kb"  autoFlush="true" %>   
 <%@page isELIgnored="true"%>   
 <!-- JSP에서 에러가 발생하면 설정한 페이지를 응답 -->
 <%@page errorPage= "page_directive_2.jpg"%>     
 <%@ page isELIgnored="false"  %>		
 
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
<% int price = 85000; 
	DecimalFormat df = new DecimalFormat("#,###");
	Calendar c = Calendar.getInstance();
	
	/* if(new Random().nextBoolean()){
		//페이지에서 예외를 강제로 발생
		throw new Exception("에러발생");
	} */
%>
<button type="button" class="btn btn-primary">
<%= price %><span class=badge>30%할인</span>
</button>
<br/>
<button type="button" class="btn btn-primary">
<%= df.format(price) %><span class=badge>30%할인</span>
</button>
<br/>
<button type="button" class="btn btn-primary">
<%= c.get(Calendar.DAY_OF_MONTH)%><span class=badge>오늘</span>
</button>
<br/>
5+17 = ${5+17}

</div>
</body>
</html>