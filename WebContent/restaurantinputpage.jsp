<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.time.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원요청</title>

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
} %>

<!-- 표현문 사용  -->

<div class="alert alert-secondary" role="alert">
	<div class="container">
		<h1 class="display-3">
		후원요청
		</h1>
	</div>
</div>


<div class="container">
<form action="boardinput.jsp" method="post" enctype="multipart/form-data">



	<div class="form-group row">
	<label class="col-sm-2">가게이름</label>
	<div class="col-sm-3">
	<input name="brname" type ="text" class="form-control" placeholder = "가게이름을 적어주세요">
	</div>
	</div>

	<div class="form-group row">
	<label class="col-sm-2">음식점 종류</label>
	<div class="col-sm-3">
	<select class="form-select" name= "brsort" aria-label="Default select example">

  <option selected value="1">한식</option>
  <option value="2">일식</option>
  <option value="3">중식</option>
   <option value="4">양식</option>
    <option value="5">그외</option>
</select>
	</div>
	</div>

	<div class="form-group row">
	<label class="col-sm-2">가격</label>
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
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">가게 정보</label>
	
	<div class="container">
  <textarea class="summernote" name="bcontent"rows="5" cols="20" class="form-control" placeholder="제품설명을 입력하세요"></textarea>    
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
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2">주소</label>
	<div class="col-sm-3">
	<input name="braddr" type ="text" class="form-control" placeholder = "주소를 적어주세요">
	</div>
	</div>


		<div class="form-group row">

<div class="form-group row">
<label class="col-sm-2">사진등록</label>
<div class="col-sm-3">
  <input type="file" name="bimage" class="form-control" id="inputGroupFile02">
</div>
</div>

	</div>
	





<br>
<br>



<div class="form-group row">


	<div class="col-sm-offset-2 col-sm-10">
	<label class="col-sm-2"></label>
	<div class="col-sm-3">
	
	<input type="submit" class="btn btn-primary" value="등록">

	

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