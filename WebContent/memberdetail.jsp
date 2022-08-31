
<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "header.jsp" %>
    <%
	mid = (String)session.getAttribute("mid");

	if (mid == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	

	
%>    
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3"><%=mid %>님의 개인정보</h1>
</div>	
</div>

<div class="container w-70">
<%
	String mno = request.getParameter("mno");
	String bauthor ;
	DTOmember member = DAOmember.memberedit(mno);
	%>

회원번호 : <%= member.getMno() %>
<br>
회원이름 : <%= member.getMname() %>

<br>
회원아이디 : <%= member.getMid() %>
<br>
회원전화번호 : <%= member.getMtel() %>
<br>
회원이메일 : <%= member.getMemail() %>
<br>
회원 성별 : <%= member.getMgender() %>
<br>
회원생년월일 :<%= member.getMyear() %>년 <%= member.getMbirthday() %>
<br>
회원주소 :<%= member.getMaddr() %>
<br>
회원등급 :<%= member.getMlevel() %>
<br>
가입날짜 :<%= member.getMdate() %>
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="memberlist.jsp" class="btn btn-secondary" role="button">목록 &raquo;</a>		
			<a href="membereditpage.jsp?mno=<%=member.getMno()%>" class="btn btn-danger" role="button">수정 &raquo;</a>		
		</div>	
	</div>
	
	</div>
<%@ include file = "../footer.jsp" %>

</body>
</html>
