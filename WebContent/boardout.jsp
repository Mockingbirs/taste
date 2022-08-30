<%@page import="db.DAOboard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%String bno=request.getParameter("bno");

 DAOboard.boardout(bno);
 response.sendRedirect("boardlist.jsp");
%>