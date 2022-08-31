<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천 맛집리스트</title>

<%@ include file="header.jsp" %>

</head>
<body>

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		추천 맛집 리스트
			</h1>
</div>	
</div>





<main>


  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      
             <%
 

        

ArrayList<DTOboard> boards = DAOboard.boardfavoriteList();

for (DTOboard board : boards) {
 	String img =  board.getBimage();  
	String imgstr = "";
	if (img != null) {
		imgstr = "images/" + img;
	}
%>	
      
      
      <div class="card" style="width: 18rem;">
  <img src="<%=imgstr %>" class="card-img-top" alt="..." style="height: 12rem;">
  <div class="card-body">
    <h5 class="card-title"><%=board.getBtitle() %></h5>
    <p class="card-text"><%=board.getBcontent() %></p>
    <a href="boarddetail.jsp?bno=<%=board.getBno() %>" class="btn btn-primary">상세보기</a>
  </div>
</div>
      

       
       <%} %>
          </div>
        </div>
      </div>
 

</main>




<%if(mid != null){ %>
<a href="boardinputpage.jsp" class="btn btn-primary" role = "button">등록</a>
 <%} %>
 <%@ include file="footer.jsp" %>
</body>
</html>