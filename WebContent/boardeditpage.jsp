<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.time.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resource/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/summernote-lite.css">
  <!--  -->

</head>
<body>


<%@ include file = "header.jsp" %>

<%


if(mid == null){
	out.println("<script>alert('로그인이 필요합니다.');</script>");
	out.println("<script>location.href='login.jsp'</script>");
}

String bno = request.getParameter("bno");



DTOboard board = DAOboard.boardEdit(bno);


%>


<!-- 표현문 사용  -->

<div class="alert alert-secondary" role="alert">
	<div class="container">
		<h1 class="display-3">
		맛집등록
		</h1>
	</div>
</div>


<div class="container">
<form action="boardedit.jsp?bno=<%=board.getBno() %>" method="post" enctype="multipart/form-data">

	<div class="form-group row">
	<label class="col-sm-2">제목</label>
	<div class="col-sm-3">
	<input name="btitle" type ="text" class="form-control" value=<%=board.getBtitle() %>>
	</div>
	</div>


	<div class="form-group row">
	<label class="col-sm-2">가게이름</label>
	<div class="col-sm-3">
	<input name="brname" type ="text" class="form-control" value=<%=board.getBrname() %>>
	</div>
	</div>

	<div class="form-group row">
	<label class="col-sm-2">음식점 종류</label>

	<%
			if ((board.getBrsort()).equals("1")) {
					%>
	<div class="col-sm-3">
	<select class="form-select" name= "brsort" aria-label="Default select example" >
  <option selected value="1">한식</option>
  <option value="2">일식</option>
  <option value="3">중식</option>
   <option value="4">양식</option>
    <option value="5">그외</option>
</select>
	</div>
	<%}else if((board.getBrsort()).equals("2")) { %>
						%>
	<div class="col-sm-3">
	<select class="form-select" name= "brsort" aria-label="Default select example" >
  <option  value="1">한식</option>
  <option selected value="2">일식</option>
  <option value="3">중식</option>
   <option value="4">양식</option>
    <option value="5">그외</option>
</select>
	</div>
	<%}else if((board.getBrsort()).equals("3")) { %>
						%>
	<div class="col-sm-3">
	<select class="form-select" name= "brsort" aria-label="Default select example" >
  <option  value="1">한식</option>
  <option value="2">일식</option>
  <option selected value="3">중식</option>
   <option value="4">양식</option>
    <option value="5">그외</option>
</select>
	</div>
	<%}else if((board.getBrsort()).equals("4")) { %>
						%>
	<div class="col-sm-3">
	<select class="form-select" name= "brsort" aria-label="Default select example" >
  <option value="1">한식</option>
  <option value="2">일식</option>
  <option value="3">중식</option>
   <option selected value="4">양식</option>
    <option value="5">그외</option>
</select>
	</div>
	<%}else if((board.getBrsort()).equals("5")) { %>
						%>
	<div class="col-sm-3">
	<select class="form-select" name= "brsort" aria-label="Default select example" >
  <option value="1">한식</option>
  <option value="2">일식</option>
  <option value="3">중식</option>
   <option value="4">양식</option>
    <option selected value="5">그외</option>
</select>
	</div>
	<%} %>
	
	
	
	</div>

	<div class="form-group row">
	<label class="col-sm-2">가격</label>
	
	<%
			if ((board.getBrprice()).equals("1")) {
					%>
	<div class="col-sm-3">
	<select class="form-select" name="brprice" aria-label="Default select example">
  <option selected value="1">10,000원 이하</option>
  <option value="2">10,000원~20000원</option>
  <option value="3">20,000원~30000원</option>
   <option value="4">30,000원~40000원</option>
    <option value="5">40,000원~50000원</option>
    <option value="6">50000원이상</option>
</select>
	</div>
	<%}else if ((board.getBrprice()).equals("2")) { %>
		<div class="col-sm-3">
	<select class="form-select" name="brprice" aria-label="Default select example">
  <option value="1">10,000원 이하</option>
  <option selected value="2">10,000원~20000원</option>
  <option value="3">20,000원~30000원</option>
   <option value="4">30,000원~40000원</option>
    <option value="5">40,000원~50000원</option>
    <option value="6">50000원이상</option>
</select>
	</div>
	<%}else if ((board.getBrprice()).equals("3")) { %>
		<div class="col-sm-3">
	<select class="form-select" name="brprice" aria-label="Default select example">
  <option value="1">10,000원 이하</option>
  <option value="2">10,000원~20000원</option>
  <option selected value="3">20,000원~30000원</option>
   <option value="4">30,000원~40000원</option>
    <option value="5">40,000원~50000원</option>
    <option value="6">50000원이상</option>
</select>
	</div>
	<%}else if ((board.getBrprice()).equals("4")) { %>
		<div class="col-sm-3">
	<select class="form-select" name="brprice" aria-label="Default select example">
  <option value="1">10,000원 이하</option>
  <option value="2">10,000원~20000원</option>
  <option value="3">20,000원~30000원</option>
   <option selected value="4">30,000원~40000원</option>
    <option value="5">40,000원~50000원</option>
    <option value="6">50000원이상</option>
</select>
	</div>
	<%}else if ((board.getBrprice()).equals("5")) { %>
		<div class="col-sm-3">
	<select class="form-select" name="brprice" aria-label="Default select example">
  <option value="1">10,000원 이하</option>
  <option value="2">10,000원~20000원</option>
  <option value="3">20,000원~30000원</option>
   <option value="4">30,000원~40000원</option>
    <option selected value="5">40,000원~50000원</option>
    <option value="6">50000원이상</option>
</select>
	</div>
	<%}else if ((board.getBrprice()).equals("6")) { %>
	
		<div class="col-sm-3">
	<select class="form-select" name="brprice" aria-label="Default select example">
  <option value="1">10,000원 이하</option>
  <option value="2">10,000원~20000원</option>
  <option value="3">20,000원~30000원</option>
   <option value="4">30,000원~40000원</option>
    <option value="5">40,000원~50000원</option>
    <option selected value="6">50000원이상</option>
</select>
	</div>
	
	<%} %>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">가게 정보</label>
	
	<div class="container">
  <textarea class="summernote"  name="bcontent" rows="5" cols="20" class="form-control" ><%=board.getBcontent() %></textarea>    
</div>
<script>
$('.summernote').summernote({
	  height: 150,
	  lang: "ko-KR"
	});
</script>
	
	
	</div>



		<div class="form-group row">
	<label class="col-sm-2">지역</label>
	
<%
			if ((board.getBrsite()).equals("1")) {
					%>
		<div class="col-sm-3">	
	<select class="form-select" name="brsite" aria-label="Default select example">
					
  <option selected value="1">서울</option>
  <option value="2">경기도</option>
  <option value="3">전라도</option>
   <option value="4">경상도</option>
    <option value="5">충청도</option>
    <option value="6">강원도</option>
</select>
	</div>
	<%}else if((board.getBrsite()).equals("2")) {%>
			<div class="col-sm-3">	
	<select class="form-select" name="brsite" aria-label="Default select example">
					
  <option  value="1">서울</option>
  <option selected value="2">경기도</option>
  <option value="3">전라도</option>
   <option value="4">경상도</option>
    <option value="5">충청도</option>
    <option value="6">강원도</option>
</select>
	</div>
	<%}else if((board.getBrsite()).equals("3")) {%>
			<div class="col-sm-3">	
	<select class="form-select" name="brsite" aria-label="Default select example">
					
  <option  value="1">서울</option>
  <option value="2">경기도</option>
  <option selected value="3">전라도</option>
   <option value="4">경상도</option>
    <option value="5">충청도</option>
    <option value="6">강원도</option>
</select>
	</div>
	<%}else if((board.getBrsite()).equals("4")) {%>
			<div class="col-sm-3">	
	<select class="form-select" name="brsite" aria-label="Default select example">
					
  <option  value="1">서울</option>
  <option value="2">경기도</option>
  <option value="3">전라도</option>
   <option selected value="4">경상도</option>
    <option value="5">충청도</option>
    <option value="6">강원도</option>
</select>
	</div>
	<%}else if((board.getBrsite()).equals("5")) {%>
			<div class="col-sm-3">	
	<select class="form-select" name="brsite" aria-label="Default select example">
					
  <option  value="1">서울</option>
  <option value="2">경기도</option>
  <option value="3">전라도</option>
   <option value="4">경상도</option>
    <option selected value="5">충청도</option>
    <option value="6">강원도</option>
</select>
	</div>
	<%}else if((board.getBrsite()).equals("6")) {%>
			<div class="col-sm-3">	
	<select class="form-select" name="brsite" aria-label="Default select example">
					
  <option  value="1">서울</option>
  <option value="2">경기도</option>
  <option value="3">전라도</option>
   <option value="4">경상도</option>
    <option  value="5">충청도</option>
    <option selected value="6">강원도</option>
</select>
	</div>
	<%}%>

	
	
	
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">주소</label>
	<div class="col-sm-3">
	<input name="braddr" value=<%=board.getBraddr()%> type ="text" class="form-control" placeholder = "주소를 적어주세요">
	</div>
	</div>


		<div class="form-group row">
	<label class="col-sm-2">선호도</label>
	<div class="col-sm-3">
	
	
			<%
			if ((board.getBrfavorite()).equals("1")) {
					%>
					<div class="form-check form-check-inline" >
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio1" value="1" checked>
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="3">
  <label class="form-check-label" for="inlineRadio2">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="4">
  <label class="form-check-label" for="inlineRadio2">4</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="5">
  <label class="form-check-label" for="inlineRadio2">5</label>
</div>
</div>
<%}else if((board.getBrfavorite()).equals("2")) { %>
<div class="form-check form-check-inline" >
 <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio1" value="1" >
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="2"checked>
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="3">
  <label class="form-check-label" for="inlineRadio2">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="4">
  <label class="form-check-label" for="inlineRadio2">4</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="5">
  <label class="form-check-label" for="inlineRadio2">5</label>
</div>
<%}else if((board.getBrfavorite()).equals("3")) { %>
<div class="form-check form-check-inline" >
 <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio1" value="1" >
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="3"checked>
  <label class="form-check-label" for="inlineRadio2">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="4">
  <label class="form-check-label" for="inlineRadio2">4</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="5">
  <label class="form-check-label" for="inlineRadio2">5</label>
</div>
<%}else if((board.getBrfavorite()).equals("4")) { %>
<div class="form-check form-check-inline" >
 <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio1" value="1" >
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="3">
  <label class="form-check-label" for="inlineRadio2">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="4"checked>
  <label class="form-check-label" for="inlineRadio2">4</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="5">
  <label class="form-check-label" for="inlineRadio2">5</label>
</div>
<%}else if((board.getBrfavorite()).equals("5")) { %>
<div class="form-check form-check-inline" >
 <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio1" value="1" >
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="3">
  <label class="form-check-label" for="inlineRadio2">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="4">
  <label class="form-check-label" for="inlineRadio2">4</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="brfavorite" id="inlineRadio2" value="5" checked>
  <label class="form-check-label" for="inlineRadio2">5</label>
</div>
<%} %>

</div>


<div class="form-group row">
<label class="col-sm-2">사진등록</label>
<div class="col-sm-3">
  <input type="file" name="bimage" class="form-control"  id="inputGroupFile02">
</div>
</div>


<script>  //사진 불러오는 방법
    // Get a reference to our file input
    const fileInput = document.querySelector('input[type="file"]');

    // Create a new File object
    const myFile = new File(['Hello World!'], '<%=board.getBimage() %>', {
        type: 'text/plain',
        lastModified: new Date(),
    });

    // Now let's create a DataTransfer to get a FileList
    const dataTransfer = new DataTransfer();
    dataTransfer.items.add(myFile);
    fileInput.files = dataTransfer.files;
</script>	
	





<br>
<br>



<div class="form-group row">


	<div class="col-sm-offset-2 col-sm-10">
	<label class="col-sm-2"></label>
	<div class="col-sm-3">
	
	<input type="submit" class="btn btn-primary" value="수정">

	

	<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
	</div>
	</div>
	</div>


</form>

</div>
<br>

<%@ include file="footer.jsp"%>


 </body>
</html>