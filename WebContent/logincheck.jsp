<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <%
    
    String mid = request.getParameter("mid");
    String mpass = request.getParameter("mpass");
    
    int result = DAOmember.login(mid,mpass);
    
    //로그인시 3가지 경우의 수가 발생된다.
    //1 로그인성공(아이디/비번일치) ->로그인 승인 메인으로 이동
    //2.로그인실패(아이디는 일치/비번 불일치) ->다시 로그인으로 보내기
    //3.로그인실패(아이디가 없는경우) -> 회원가입으로 이동
    
    if(result==1){
    	
    	//로그인 성공 후 세션넣기
    	session.setAttribute("mid",mid);
    	
      	DTOmember member = DAOmember.memberDetail(mid);
    	
    	session.setAttribute("mlevel",member.getMlevel());
    
    	
    	
    	out.println("<script>alert('로그인 성공, 메인화면으로 이동합니다.');</script>");
    	out.println("<script>location.href='main.jsp'</script>");
   /*  	response.sendRedirect("productlist.jsp"); */
    }else if(result==2){
    	out.println("<script>alert('비밀번호 불일치, 재로그인');</script>");
    	out.println("<script>location.href='login.jsp'</script>");
 /*    	response.sendRedirect("login.jsp"); */
    }else{
    	out.println("<script>alert('회원가입이 필요합니다.');</script>");
    	out.println("<script>location.href='memberinputpage.jsp'</script>");
/*     	response.sendRedirect("memberinputpage.jsp"); */
    }
    %>