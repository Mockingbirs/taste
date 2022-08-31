<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장소별 맛집리스트</title>

<%@ include file="header.jsp" %>

</head>
<body>
<%String brsite = request.getParameter("brsite");  
if(brsite==null){response.sendRedirect("boardlist.jsp");

}else{
%>



<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		장소별맛집리스트[<% if(brsite.equals("1")){
			out.print("서울");
			}else if(brsite.equals("2")){
				out.print("경기도 ");
				}else if(brsite.equals("3")){
					out.print("전라도 ");
					}else if(brsite.equals("4")){
						out.print("경상도");
					}else if(brsite.equals("5")){
						out.print("충청도 ");
					}else if(brsite.equals("6")){
						out.print("강원도 ");
					}
			
			
			%>]
		
	</h1>
</div>	
</div>


<main>


  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      
             <%
 
             
             
      ArrayList<DTOboard> boards = DAOboard.boardsiteList(brsite);

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
 <%} }%>











 <%@ include file="footer.jsp" %>
</body>
</html>