<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 등록한 맛집</title>

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
		내가등록한 맛집 
	</h1>
</div>	
</div>




<div class="container">
<div class="row" align="center">

<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
	

  <tbody>
       <%
 

ArrayList<DTOboard> boards = DAOboard.myboardList(mid);

for (DTOboard board : boards) {
	
%>	
    <tr>
 
      <th scope="row"><%=board.getBno()%></th>
      <td><a href="boarddetail.jsp?bno=<%=board.getBno() %>"><%=board.getBtitle() %></a></td>
      <td><%=board.getBauthor() %></td>
      <td><%=board.getBdate() %></td>

    </tr>
  	
    <% 	
	
	}
%>  
    
</table>


</div>
</div>
<%if(mid == null){ %>
<a href="boardinputpage.jsp" class="btn btn-primary" role = "button">등록</a>
 <%} %>
 <%@ include file="footer.jsp" %>
</body>
</html>