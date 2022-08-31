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

<% String cmid = (String)session.getAttribute("mid"); 
   /* String title = request.getParameter("title");
   String content = request.getParameter("content"); */
   
%>
<% 
   String cbno = request.getParameter("cbno");
	String ccomment = request.getParameter("ccomment");
	String cfavorite = request.getParameter("cfavorite");
   

   DAOcomment.commentinsert(cbno,cmid,ccomment,cfavorite);
   
   response.sendRedirect("boarddetail.jsp?bno="+cbno); 
%>

<%@ include file="footer.jsp" %>