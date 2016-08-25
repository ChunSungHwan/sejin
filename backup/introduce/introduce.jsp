<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String cp = request.getContextPath(); %>          
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="<%=cp%>/resources/bootstrap/js/bootstrap.min.js"></script>
<title>소개 - 세진공인중개부동산</title>


<style type="text/css">
.navbar-custom {
    background-color:#229922;
    color:#ffffff;
    border-radius:0;
}

.navbar-custom .navbar-nav > li > a {
    color:#fff;
}
.navbar-custom .navbar-nav > .active > a, .navbar-nav > .active > a:hover, .navbar-nav > .active > a:focus {
    color: #ffffff;
    background-color:transparent;
}
.navbar-custom .navbar-brand {
    color:#eeeeee;
}


</style>


</head>
<body>

<nav class="navbar-custom navbar-default" style="margin-bottom: 0px">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="http://192.168.0.43:9999/website/main.do">세진부동산 02-568-3366</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-right">
      <li><a href="http://192.168.0.43:9999/website/main.do">Home</a></li>
      <li><a href="http://192.168.0.43:9999/website/search/search.do">매물검색</a></li>
      <li><a href="http://192.168.0.43:9999/website/introduce/introduce.do">부동산소개</a></li>
      <!-- <li><a href="#">즐겨찾기</a></li> -->
    </ul>
    </div>
  </div>
</nav>


<div class="container" id="map" style="height: 600px; margin-top: 20px"></div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=ef077656f7ea38553b7e918751a598e6"></script>
<script> 
    $(document).ready(function() {
      var container = document.getElementById('map');
        var options = {
            center: new daum.maps.LatLng(37.500515, 127.050302),
            level: 3,
            };
         
       var map = new daum.maps.Map(container, options);
       
       var markerPosition  = new daum.maps.LatLng(37.500515, 127.050302); 
       var marker = new daum.maps.Marker({
           position: markerPosition
       });
       marker.setMap(map);
       
       
       var iwContent = '<div style="padding:5px;">세진부동산<br>02-568-3366 <br><a href="http://map.daum.net/link/map/세진부동산,37.500515, 127.050302" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/세진부동산,37.500515, 127.050302" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
       iwPosition = new daum.maps.LatLng(37.500515, 127.050302); //인포윈도우 표시 위치입니다
		   var infowindow = new daum.maps.InfoWindow({
		       position : iwPosition, 
		       content : iwContent 
		   });
		   infowindow.open(map, marker); 

       var mapTypeControl = new daum.maps.MapTypeControl();
       map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

       var zoomControl = new daum.maps.ZoomControl();
       map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
       
    });
</script>


<div class="container" style="margin-top: 20px">
  <p style="font-size: 3em"><b style="color: #FF28A7">다양한 매물</b>과 <b style="color: #0A6EFF">최신 정보</b>가 있는 곳!<br>항상 여러분과 함께 하겠습니다.</p>
  <p style="font-size: 1.2em">안녕하세요.<br>저희 세진공인중개사사무소 홈페이지에 오신 걸 환영합니다.
  <br><br>저희 세진공인중개사사무소는 역삼동 아파트관련
  <br> 물건을 주로 취급하고 있는 전문 공인중개사 사무소입니다.
  <br><br>내가 살 집을 고르듯 고객 여러분 한분 한분께 가장 적합한 집을 소개하도록 노력하겠습니다.
  <br><br>부동산 임직원 모두가 고객입장이라 생각하고 중개한다는 마음으로 최선을 다하겠습니다.
  <br><br>감사합니다.</p>
</div>



</body>
</html>