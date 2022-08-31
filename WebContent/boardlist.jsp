<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Album example · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/album/">

   
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
<title>맛집리스트</title>

<%@ include file="header.jsp" %>

</head>

<body>

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		맛집리스트
	</h1>
</div>	
</div>







<main>


  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      
             <%
 

ArrayList<DTOboard> boards = DAOboard.boardList();

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



 
 

