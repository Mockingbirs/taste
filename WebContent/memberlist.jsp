<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원리스트</title>

<%@ include file="header.jsp" %>
<%


if(mid == null){
	out.println("<script>alert('로그인이 필요합니다.');</script>");
	out.println("<script>location.href='login.jsp'</script>");
}
    %>
</head>
<body>

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원리스트 
	</h1>
</div>	
</div>




<div class="container">
<div class="row" align="center">

<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">회원번호</th>
      <th scope="col">회원이름</th>
      <th scope="col">회원아이디</th>
      <th scope="col">회원가입날짜</th>
    </tr>
  </thead>
	

  <tbody>
       <%
 

ArrayList<DTOmember> members = DAOmember.memberList();

for (DTOmember member : members) {
%>	
    <tr>
 
      <th scope="row"><%=member.getMno()%></th>
      <td><a href="memberdetail.jsp?mno=<%=member.getMno() %>"><%=member.getMname() %></a></td>
      <td><%=member.getMid() %></td>
      <td><%=member.getMdate() %></td>

    </tr>
  	
    <% 	
	}
%>  
    
</table>


</div>
</div>

 
 <%@ include file="footer.jsp" %>
</body>
</html>