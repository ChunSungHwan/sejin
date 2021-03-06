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
<title>세진공인중개부동산</title>
<!-- 
<style>
.label {margin-bottom: 96px;}
.label * {display: inline-block;vertical-align: top;}
.label .left {background: url("http://i1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_l.png") no-repeat;display: inline-block;height: 24px;overflow: hidden;vertical-align: top;width: 7px;}
.label .center {background: url(http://i1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_bg.png) repeat-x;display: inline-block;height: 24px;font-size: 12px;line-height: 24px;}
.label .right {background: url("http://i1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_r.png") -1px 0  no-repeat;display: inline-block;height: 24px;overflow: hidden;width: 6px;}
</style>
 -->

<style type="text/css">
.customOverlay {background-color: #FFE650; border-radius:5px;}
a:link { color: black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
a:hover { color: black; text-decoration: none;}
a:active {color: black; text-decoration: none;}


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
    </ul>
    </div>
  </div>
</nav>


<div class="container-fluid" id="map" style="height: 500px;"></div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=ef077656f7ea38553b7e918751a598e6"></script>
<script> 
    $(document).ready(function() {
    	var container = document.getElementById('map');
        var options = {
            center: new daum.maps.LatLng(37.499554, 127.048307),
            level: 4,
            draggable: false,
            disableDoubleClickZoom: true
            };
         
       var map = new daum.maps.Map(container, options);
       
       
       var mapOverays = ${mapOverays};
       for(var i = 0; i < mapOverays.length; i++) {
    	   var customOverlay = new daum.maps.CustomOverlay({
    		      position: new daum.maps.LatLng(mapOverays[i].latitude, mapOverays[i].longitude),
    		      content: "<div class='customOverlay'><a href='http://192.168.0.43:9999/website/search/search.do?cno=" + mapOverays[i].no + "'>" + mapOverays[i].name + "</a></div>"  
    		 });
    	   customOverlay.setMap(map);
       }
       
    });
</script>


<hr>


<div class="container-fluid">
  <div class="row">
    <div class="col-xs-4 col-xs-offset-5">
	    <div class="btn-group" role="group" aria-label="...">
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/main.do'">전체</button>
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/main.do?buyType=매매'">매매</button>
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/main.do?buyType=전세'">전세</button>
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/main.do?buyType=월세'">월세</button>
	    </div>
    </div>
  </div>  
</div>


<hr>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8 col-xs-offset-2">
	    <c:forEach var="apartments" items="${list}">
		    <div class="col-xs-4" onclick="location.href='http://192.168.0.43:9999/website/search/details.do?ano=${apartments.ano}&cno=${apartments.cno }'">
		      <div class="thumbnail">
		        <img src="http://192.168.0.43:9999${apartments.photos[0].photoPath}" alt="..." style="min-height:200px;height:200px;width: 300px">
		        <div class="caption">
		          <h4>${apartments.aname }</h4>
               <c:choose>
                <c:when test="${apartments.buyType == '매매'}">
                  <p style="margin-bottom: 0">매매가 ${apartments.salePrice }만원</p>
                  <p style="margin-bottom: 2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </c:when>
                <c:when test="${apartments.buyType == '전세'}">
                  <p style="margin-bottom: 0">전세보증금 ${apartments.rentDeposit }만원</p>
                  <p style="margin-bottom: 2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </c:when>
                <c:otherwise>
                  <p style="margin-bottom: 0">월세보증금 ${apartments.mRentDeposit }만원</p>
                  <p style="margin-bottom: 2px">월세 ${apartments.mRentDeposit }만원</p>
                </c:otherwise>               
               </c:choose> 
		          
		          <p style="margin-bottom: 0">공급면적: ${apartments.supplyArea }m²</p><p>전용면적: ${apartments.exclusiveArea }m²</p>
		        </div>
		      </div>
		    </div>
	    </c:forEach>
    </div>
  </div>  
</div>

<hr>
<footer class="container-fluid">
  <p style="text-align: center;">&copy; 세진부동산 서울특별시 강남구 역삼동 716-1 개나리아파트5차 상가 104호 세진부동산 02-556-3366</p>
</footer>


</body>
</html>