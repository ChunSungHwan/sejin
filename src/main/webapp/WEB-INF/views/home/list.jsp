<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String cp = request.getContextPath(); %>          
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.customOverlay {background-color: #F8646E; border-radius:5px;}
</style>


</head>

<body>
<nav class="navbar navbar-default" style="margin-bottom: 0px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">세진부동산</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="http://192.168.0.43:9999/website/home/list.do">Home</a></li>
      <li><a href="#">매물검색</a></li>
      <li><a href="#">부동산소개</a></li>
      <li><a href="#">즐겨찾기</a></li>
    </ul>
  </div>
</nav>

<div class="container-fluid" id="map" style="height: 600px;"></div>
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
    		      content: "<div class='customOverlay'><a href='" + mapOverays[i].no + "'>" + mapOverays[i].name + "</a></div>"  
    		 });
    	   customOverlay.setMap(map);
       }
       
    });
    
    
</script>
<hr>




<div class="container-fluid">
  <div class="row">
    <div class="col-xs-2 col-xs-offset-5">
	    <div class="btn-group" role="group" aria-label="...">
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/home/list.do'">전체</button>
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/home/list.do?buyType=매매'">매매</button>
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/home/list.do?buyType=전세'">전세</button>
	      <button type="button" class="btn btn-default" onclick="location.href='http://192.168.0.43:9999/website/home/list.do?buyType=월세'">월세</button>
	    </div>
    </div>
  </div>  
</div>

<hr>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8 col-xs-offset-2">
    <c:forEach var="apartments" items="${list}">
      
	    <div class="col-xs-3" onclick="location.href='http://192.168.0.43:9999/website/home/list.do'">
	      <div class="thumbnail">
	        <img src="/imgFolder/noimg.gif" alt="...">
	        <div class="caption">
	          <h3>${apartments.aname }</h3>
	          <p>${apartments.buyType }</p>
	        </div>
	      </div>
	    </div>
    
    </c:forEach>
      
    </div>
    
  </div>  
</div>



</body>
</html>