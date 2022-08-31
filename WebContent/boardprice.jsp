<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가격별 맛집리스트</title>

<%@ include file="header.jsp" %>

</head>
<body>
<% String brprice = request.getParameter("brprice"); 
if(brprice==null){response.sendRedirect("boardlist.jsp");

}else{

%>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		가격별맛집리스트[<% if(brprice.equals("1")){
			out.print("10,000원이하 ");
			}else if(brprice.equals("2")){
				out.print("10,000~20,0000원 ");
				}else if(brprice.equals("3")){
					out.print("20,000~30,0000원 ");
					}else if(brprice.equals("4")){
						out.print("30,000~40,0000원 ");
					}else if(brprice.equals("5")){
						out.print("40,000~50,0000원 ");
					}else if(brprice.equals("6")){
						out.print("50,000원이상 ");
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
 

            

             ArrayList<DTOboard> boards = DAOboard.boardpriceList(brprice);

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
 <%}} %>
 <%@ include file="footer.jsp" %>
</body>
</html>