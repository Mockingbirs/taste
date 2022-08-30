<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>

<% String mno=request.getParameter("mno");
	
%>
<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원탈퇴
	</h1>
</div>	
</div>

<div class="container w-100 "  style="max-width: 330px">

<main class="form-signin">
  <form action = "memberoutcheck.jsp?mno=<%=mno%>" >
 
 <div>
                        <div class="col-sm-7">
              <label for="Name" class="form-label">아이디를 입력하세요</label>
              <input type="text" class="form-control "name="mid" id="mid"  required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
    
            <div class="col-sm-7 ">
              <label for="Pasword" class="form-label">비밀번호를 입력하세요</label>
              <input type="password" class="form-control " name="mpass"id="mpass"   required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>
 <button class="w-100 btn btn-lg btn-primary" type="submit">탈퇴</button> 

 </div>
    
    
  </form>
  

  
</main>


</div>

<br><br>

<%@ include file="footer.jsp" %>

</body>
</html>