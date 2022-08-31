
<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 <style>
    .overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #d95050; background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 27px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 190px; height: 56px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 24px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>

</head>
<body>
<%@ include file = "header.jsp" %>

    <%
 
	mid = (String)session.getAttribute("mid");

	String bno = request.getParameter("bno");
	
	if(bno==null){response.sendRedirect("boardlist.jsp");
		
	}else{
	DTOboard board = DAOboard.boardEdit(bno);
	String bauthor ;
	String Bauthor = null;
	Bauthor = board.getBauthor();
	
 	String img =  board.getBimage();  
	String imgstr = "";
	if (img != null) {
		imgstr = "images/" + img;
	} 	
	
	
%>    


<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3"><%=board.getBrname()%>의 상세정보</h1>
</div>	
</div>


 <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">제목 <span class="text-muted"><%= board.getBtitle() %></span></h2>
        <p class="lead">가게 이름 : <%= board.getBrname() %>
        <br>
        가게 설명 : <%= board.getBcontent() %>
        <br>
        가격 : 
<%if(board.getBrprice().equals("1")){
	out.print("10,000원이하");
}else if(board.getBrprice().equals("2")){
	out.print("10,000~20,000원");
}else if(board.getBrprice().equals("3")){
	out.print("20,000~30,000원");
}
else if(board.getBrprice().equals("4")){
	out.print("30,000~40,000원");
}
else if(board.getBrprice().equals("5")){
	out.print("40,000~50,000원");
}else if(board.getBrprice().equals("6")){
	out.print("50,000원 이상");
}	
	%>
<br>	
	작성자 선호도 :<%if(board.getBrfavorite().equals("1")){
	out.print("매우나쁨");
}else if(board.getBrfavorite().equals("2")){
	out.print("나쁨");
}else if(board.getBrfavorite().equals("3")){
	out.print("보통");
}
else if(board.getBrfavorite().equals("4")){
	out.print("좋음");
}else if(board.getBrfavorite().equals("5")){
	out.print("매우좋음");
}
%>
<br>
후기 평점 :        <%
 

ArrayList<DTOcomment> comments = DAOcomment.commentList(bno);
double sum=0;
int count=0;
for (DTOcomment comment : comments) {
	Double favorite = Double.parseDouble(comment.getCfavorite());
	sum += favorite;
	count++;
	

}
double semisum = sum/count;
double finsum = Double.parseDouble(String.format("%.2f",semisum));

String fsum = Double.toString(finsum);
if(fsum.equals("NaN")){
 out.print("평가점수가 없습니다.");
}else{
	out.print(finsum+"점");
}



%>

<br>
위치 : [<%if(board.getBrsite().equals("1")){
	out.print("서울");
}else if(board.getBrsite().equals("2")){
	out.print("경기도");
}else if(board.getBrsite().equals("3")){
	out.print("전라도");
}
else if(board.getBrsite().equals("4")){
	out.print("경상도");
}else if(board.getBrsite().equals("5")){
	out.print("충청도");
}else if(board.getBrsite().equals("6")){
	out.print("강원도");
}
%>]
<br>

상세주소 : <a href ="map.jsp?braddr=<%= board.getBraddr() %>"  target='_blank'><%= board.getBraddr() %></a>


         </p>
      </div>
      <div class="col-md-5 order-md-1">
        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
<img src = "<%=imgstr %>" style="width:100%; height:100%;">
      </div>
    </div>




		<a href="boardlist.jsp" class="btn btn-primary" role="button">목록 &raquo;</a>	
		<%if(mlevel.equals("1")){%>
		<a href="boardeditpage.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">수정 &raquo;</a>
		<a href="boardout.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">삭제 &raquo;</a>	
		<%}else if(mid !=null){if(mid.equals(Bauthor)){%> 
	<a href="boardeditpage.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">수정 &raquo;</a>
		<a href="boardout.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">삭제 &raquo;</a>	
				
		<% }}%> 
		
	
 	
<%if(mid !=null){ 
%>
<form  action ="commentinput.jsp">
<div class="col-12 row">
              <div class="col-9">
              <input type="text" class="form-control"name="ccomment" id="memail" placeholder="방문 후기를 입력해주세요">
              </div>
                               <div class="col-2">
              <input type="submit" class="btn btn-primary" value="등록">
              </div>
                  <input type="hidden" name="cbno" class="btn btn-primary " value="<%=board.getBno()%>">
  
  
  		<div class="form-group row">
	<label class="col-sm-2">선호도</label>
	<div class="col-sm-3">
	<div class="form-check form-check-inline" >
  <input class="form-check-input" type="radio" name="cfavorite" id="inlineRadio1" value="1">
  <label class="form-check-label" for="inlineRadio1">1점</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="cfavorite" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2점</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="cfavorite" id="inlineRadio2" value="3">
  <label class="form-check-label" for="inlineRadio2">3점</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="cfavorite" id="inlineRadio2" value="4">
  <label class="form-check-label" for="inlineRadio2">4점</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="cfavorite" id="inlineRadio2" value="5">
  <label class="form-check-label" for="inlineRadio2">5점</label>
</div>
</div>
</div>
  
  
  
  
  
  
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
          
            </div>
           
</form>
<%} %>
<div class="col-9 ">
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">작성자</th>
      <th scope="col">한줄평</th>
	  <th scope="col">평점</th>
    </tr>
  </thead>
  <tbody>
        <%
 

ArrayList<DTOcomment> commentss = DAOcomment.commentList(bno);

for (DTOcomment comment : commentss) {
%>	
    <tr>
      <td><%=comment.getCmid()%></td>
      <td><%=comment.getCcomment()%>
      <%if(comment.getCmid().equals(mid)){ %>
      <a href="commentout.jsp?cno=<%=comment.getCno() %>&cbno=<%=board.getBno()%>" class="btn  w-40 btn btn-secondary btn-lg" role="button">삭제</a> </td>
    <%} %>
    <td><%if(comment.getCfavorite().equals("1")){
	out.print("1점");
}else if(comment.getCfavorite().equals("2")){
	out.print("2점");
}else if(comment.getCfavorite().equals("3")){
	out.print("3점");
}
else if(comment.getCfavorite().equals("4")){
	out.print("4점");
}else if(comment.getCfavorite().equals("5")){
	out.print("5점");
}
%></td>
    </tr>
  </tbody>

<%}} %>
</table> 
</div>	
<%@ include file = "../footer.jsp" %>




</body>
</html>



