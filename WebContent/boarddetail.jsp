
<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


 <style>
    .overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #d95050; background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 27px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 190px; height: 56px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 24px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>

</head>
<body>
<%@ include file = "header.jsp" %>
    <%
 
	mid = (String)session.getAttribute("mid");



	
%>    
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">product Detail</h1>
</div>	
</div>

<div class="container w-70">
<%
	String bno = request.getParameter("bno");
	
	DTOboard board = DAOboard.boardEdit(bno);
	String bauthor ;
	String Bauthor = null;
	Bauthor = board.getBauthor();
	
 	String img =  board.getBimage();  
	String imgstr = "";
	if (img != null) {
		imgstr = "images/" + img;
	} 
	
	
	
%>

제목 : 제목 : <%= board.getBtitle() %>
<br>
가게 이름 : <%= board.getBrname() %>
<br>
<img src = "<%=imgstr %>" style="width:30rem; height:30rem;">

<br>
가게 설명 : <%= board.getBcontent() %>
<br>
가격 : <%= board.getBrprice() %>
<br>
위치 : <%= board.getBrsite() %> <%= board.getBraddr() %>

     <div id="map" style="width:100%;height:350px;"></div>
	<div id="roadview" style="width:100%;height:300px"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac10446de9c5b1018c16a8217bca773c&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapCenter = new kakao.maps.LatLng(33.5563, 126.7958), // 지도의 중심좌표
    mapOption = {
        center: mapCenter, // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

var geocoder = new kakao.maps.services.Geocoder();


//주소로 좌표를 검색합니다
geocoder.addressSearch('<%=board.getBraddr()%>', function(result, status) {

 // 정상적으로 검색이 완료됐으면 
  if (status === kakao.maps.services.Status.OK) {

     var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

     // 결과값으로 받은 위치를 마커로 표시합니다
     var marker = new kakao.maps.Marker({
         map: map,
         position: coords
         
         
     });
     
     map.setCenter(coords);
  
     rvClient.getNearestPanoId(coords, 50, function(panoId) {
    	    rv.setPanoId(panoId, coords); //panoId와 중심좌표를 통해 로드뷰 실행
    	});
}
});
</script>


			
		<%if(mlevel.equals("1")){%>
		<a href="boardeditpage.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">수정 &raquo;</a>
		<a href="boardout.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">삭제 &raquo;</a>	
		<%}else if(mid !=null){if(mid.equals(Bauthor)){%> 
	<a href="boardeditpage.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">수정 &raquo;</a>
		<a href="boardout.jsp?bno=<%=board.getBno()%>" class="btn btn-danger" role="button">삭제 &raquo;</a>	
				
		<% }}%> 
		</div>	

<%@ include file = "../footer.jsp" %>




</body>
</html>
