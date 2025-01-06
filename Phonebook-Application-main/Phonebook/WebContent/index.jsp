<%@ page import="java.sql.Connection" %>
<%@ page import="com.conn.DbConnect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
<style type="text/css">
.back-img{
background:url("img/new1.jpg");
width:100%;
height:90vh;
background-repeat: no repeat;
background-size: cover;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>



<div class="container-fluid back-img text-center">
    <h1 style="color: skyblue;">Welcome to PhoneBook Application</h1>
</div>

<%@include file="component/footer.jsp" %>
</body>
</html>