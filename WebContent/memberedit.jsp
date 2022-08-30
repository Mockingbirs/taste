<%@page import="util.*"%>
<%@page import="db.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@ include file="header.jsp" %>

<% String bauthor = (String)session.getAttribute("mid"); 
   /* String title = request.getParameter("title");
   String content = request.getParameter("content"); */
   
%>
<% 
   
   String mno = request.getParameter("mno");
String mname = request.getParameter("mname");
String mpass = request.getParameter("mpass");
String mtel = request.getParameter("mtel");
String memail = request.getParameter("memail");
String mgender = request.getParameter("mgender");
String mbirthday = request.getParameter("mbirthday");
String myear = request.getParameter("myear");
String maddr = request.getParameter("maddr");


	
   
  
   
  
    
  
  
   DAOmember.memberUpdate(mname,mpass,mtel,memail,mgender,mbirthday,myear,maddr,mno);
   
   response.sendRedirect("memberlist.jsp");   
%>

<%=mno %> 

<%@ include file="footer.jsp" %>