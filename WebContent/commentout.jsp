<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%String cno=request.getParameter("cno");
String cbno = request.getParameter("cbno");

 DAOcomment.commentout(cno);
 response.sendRedirect("boarddetail.jsp?bno="+cbno);
%>