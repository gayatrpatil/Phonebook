<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
</head>
<body style="background-color:#ADD8E6;">
<body>
<%@include file="component/navbar.jsp"%>

<%if (user == null){
	 session.setAttribute("invalidMsg", "Login Please..");
     response.sendRedirect("login.jsp");

}%>

<div class="container-fluid">
<div class="row p-3">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center" style="color:#007BFF;">Add Contact</h4>

<%
String sucssMsg=(String)session.getAttribute("succMsg"); 
String errorMsg=(String)session.getAttribute("failedMsg"); 

if(sucssMsg != null){
%>
     <p class="text-success text-center"><%=sucssMsg %></p>
<%
session.removeAttribute("succMsg");
}
if(errorMsg!=null)
{
%>
    <p class="text-danger text-center"><%=errorMsg %></p>
<%
session.removeAttribute("failedMsg");	
}
%>


<form action="addContact" method="post">
<%
if(user!=null)
{%>
    <input type="hidden" value="<%=user.getId()%>" name="userid">
<%}
%>

 <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
 </div>

 <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    </div>
    
     <div class="form-group">
    <label for="exampleInputEmail1">Enter Phone No</label>
    <input name="phno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    </div>
 
  
    <div class="form-group">
    <textarea rows="3" cols="" placeholder="Enter About" name="about" class="form-control"></textarea>
   
    </div>
 
  
  <div class=text-center>
  <button type="submit" class="btn btn-primary">Save Contact</button>
  </div>
  
</form>

</div>

</div>
</div>
</div>
</div>

</body>
</html>