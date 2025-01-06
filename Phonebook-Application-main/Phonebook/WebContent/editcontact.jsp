<%@ page import="com.dao.ContactDAO" %>
<%@ page import="com.conn.DbConnect" %>
<%@ page import="com.entity.Contact" %>

<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>

</head>
<body>
<%@include file="component/navbar.jsp"%>

<%if(user == null){
	 session.setAttribute("invalidMsg","Login Please..");
     response.sendRedirect("login.jsp");

}%>

<div class="container-fluid">
<div class="row p-3">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center" style="color:#007BFF;">Edit Contact</h4>

<%

String errorMsg=(String)session.getAttribute("failedMsg"); 


if(errorMsg!=null)
{
%>
    <p class="text-danger text-center"><%=errorMsg %></p>
<%
session.removeAttribute("failedMsg");	
}
%>

<form action="update" method="post">
<%
int cid = Integer.parseInt(request.getParameter("cid"));
ContactDAO dao=new ContactDAO(DbConnect.getConn());
Contact c=dao.getContactByID(cid);
%>

<input type="hidden" value="<%=cid%>" name="cid">

 <div class="form-group">
    <label for="exampleInputEmail1">Enter Name</label>
    <input value="<%=c.getName()%>" name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
 </div>

 <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input value="<%=c.getEmail()%>" name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    </div>
    
     <div class="form-group">
    <label for="exampleInputEmail1">Enter Phone No</label>
    <input value="<%=c.getPhno()%>" name="phno" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
    </div>
 
  
    <div class="form-group">
    <textarea rows="3" cols="" placeholder="Enter About" name="about" class="form-control"><%=c.getAbout()%></textarea>
   
    </div>
 
  
  <div class=text-center>
  <button type="submit" class="btn btn-primary">Update Contact</button>
  </div>
  
</form>

</div>

</div>
</div>
</div>
</div>


</body>
</html>