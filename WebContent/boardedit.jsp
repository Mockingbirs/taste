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
   String btitle = null;
   String bcontent = null;
   String brname = null;
   String brsort = null;
   String brprice = null;
   String brsite = null;
   String braddr = null;
   String brfavorite = null;
   String bimage = null; 
   byte[] bimagef = null;
   String bno = request.getParameter("bno");
   
  
   
   ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

   List items = sfu.parseRequest(request);
   
   Iterator iter = items.iterator(); // Iterator = item에 순서 부여
   
   while(iter.hasNext()){
      FileItem item = (FileItem) iter.next(); //형변환
      String name = item.getFieldName();//키값 즉 이름을 추출
      
      
      if(item.isFormField()){
         //제목, 내용 등 이미지를 제외한 나머지 항목들을 차례대로 추출
         String value = item.getString("UTF-8");
         if(name.equals("btitle")) btitle = value;
         else if (name.equals("brname")) brname = value;
         else if (name.equals("brsort")) brsort = value;
         else if (name.equals("brprice")) brprice = value;
         else if (name.equals("brsite")) brsite = value;
         else if (name.equals("braddr")) braddr = value;
         else if (name.equals("brfavorite")) brfavorite = value;
         else if (name.equals("bcontent")) bcontent = value;
         else if (name.equals("bauthor")) bauthor = value;
         else if (name.equals("bno")) bno = value;
      }else{
          //이미지이름과 이미지파일 추출 
          if(name.equals("bimage")){
             bimage = item.getName();
             bimagef = item.get();
             
             String root = application.getRealPath(java.io.File.separator);
             FileUtil.saveImage(root,bimage,bimagef);
          }
      }
   } 
   
   DAOboard.boardupdate(btitle,brname,brsort,brprice,brsite,braddr,brfavorite,bcontent,bimage,bauthor,bno);
   
   response.sendRedirect("boardlist.jsp");
%>

<%@ include file="footer.jsp" %>