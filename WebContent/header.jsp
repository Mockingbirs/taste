<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">




<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


</head>
<body>


   <% 
    
      String mid = (String)session.getAttribute("mid"); 
	  String mlevel = "5"; 
	  
  
        String status = null;
       if (mid == null) {
          status = "방문을 환영합니다.로그인 해주세요";
          
      } else{
         status = mid + "님 방문을 환영합니다.";   
         mlevel = (String)session.getAttribute("mlevel");
      
 
       
   }%> 




<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

<div class="container-fluid">
    <a class="navbar-brand" href="#">TASTE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
     <!--    <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li> -->
        
           <li class="nav-item">
          <a class="nav-link active" href="boardlist.jsp">맛집리스트</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" href="boardfavorite.jsp">추천맛집</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	가격별 메뉴
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="boardprice.jsp?brprice=1">10,000원 이하</a></li>
            <li><a class="dropdown-item" href="boardprice.jsp?brprice=2">10,000원~ 20,000원</a></li>
           <li><a class="dropdown-item" href="boardprice.jsp?brprice=3">20,000원~ 30,000원</a></li>
           <li><a class="dropdown-item" href="boardprice.jsp?brprice=4">30,000원~ 40,000원</a></li>
           <li><a class="dropdown-item" href="boardprice.jsp?brprice=5">40,000원~ 50,000원</a></li>
           <li><a class="dropdown-item" href="boardprice.jsp?brprice=6">50,000원 이상</a></li>
          </ul>
          
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	음식별 메뉴          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="boardsort.jsp?brsort=1">한식</a></li>
            <li><a class="dropdown-item" href="boardsort.jsp?brsort=2">일식</a></li>
            <li><a class="dropdown-item" href="boardsort.jsp?brsort=3">중식</a></li>
            <li><a class="dropdown-item" href="boardsort.jsp?brsort=4">양식</a></li>
            <li><a class="dropdown-item" href="boardsort.jsp?brsort=5">그외</a></li>
          </ul>
          
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            지역별 메뉴
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="boardsite.jsp?brsite=1">서울</a></li>
            <li><a class="dropdown-item" href="boardsite.jsp?brsite=2">경기</a></li>
            <li><a class="dropdown-item" href="boardsite.jsp?brsite=3">전라도</a></li>
            <li><a class="dropdown-item" href="boardsite.jsp?brsite=4">경상도</a></li>
            <li><a class="dropdown-item" href="boardsite.jsp?brsite=5">충청도</a></li>
            <li><a class="dropdown-item" href="boardsite.jsp?brsite=6">강원도</a></li>
          </ul>
          
        </li>
        
 <%  if (mid != null) { %>       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	나만의 맛집공간
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="boardinputpage.jsp">맛집 등록</a></li>
            <li><a class="dropdown-item" href="#">내가 찜한 맛집</a></li>
            <li><a class="dropdown-item" href="myboard.jsp">내가 등록한 맛집 보기</a></li>
          </ul>
            </li>
            <%} %>
            
            
         <% if(mlevel.equals("1")){ %>   
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            관리자전용
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="memberlist.jsp">회원관리</a></li>
            <li><a class="dropdown-item" href="boardlist.jsp">게시물관리</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">후원관리</a></li>
          </ul>
        </li>
         
        <%}else{}
           
      %>
        
   
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      
   <!--    <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">검색</button>
      </form> -->
     <span class='text-white'><%=status%></span> 
      
      <%  if (mid == null) { %>  
      <form class="d-flex" action="login.jsp">
        <button class="btn btn-outline-success" type="submit">로그인</button>
      </form>
      
      <form class="d-flex" action="memberinputpage.jsp">      
        <button class="btn btn-outline-success" type="submit">회원가입</button>
      </form>
     <% }else {%>
    <%
   
    DTOmember member = DAOmember.memberDetail(mid);
    
    %> 
 <%--             <form class="d-flex" action="membereditpage.jsp" >
              <input type="hidden" name="mno" value="<%=member.getMno() %>">
        <button class="btn btn-outline-success" type="submit">내정보</button> --%>
         <a href="membereditpage.jsp?mno=<%=member.getMno() %>" class="btn btn-outline-success" role="button">내정보</a>
    <!--   </form> -->
           <form class="d-flex" action="logout.jsp">
        <button class="btn btn-outline-success" type="submit">로그아웃</button>
      </form>
     <%} %>
     
    </div>
  </div>
</nav>

<br>
<br>

</body>
</html>