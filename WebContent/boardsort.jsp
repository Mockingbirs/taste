<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종류별 맛집 리스트</title>

<%@ include file="header.jsp" %>

</head>
<body>

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		종류별 맛집 리스트
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
 
       String brsort = request.getParameter("brsort"); 
ArrayList<DTOboard> boards = DAOboard.boardsortList(brsort);

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
<%if(mid != null){ %>
<a href="boardinputpage.jsp" class="btn btn-primary" role = "button">등록</a>
 <%} %>
 <%@ include file="footer.jsp" %>
</body>
</html>