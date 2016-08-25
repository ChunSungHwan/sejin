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
<title>세부정보 - 세진공인중개부동산</title>

<style>
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
    width: 70%;
    margin: auto;
}


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


<div class="container" id="map" style="height: 300px; margin-top: 10px"></div>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=ef077656f7ea38553b7e918751a598e6"></script>
<script> 
    $(document).ready(function() {
      var container = document.getElementById('map');
       var latlong = ${latlong};
       console.log(latlong.latitude);
       var markerPosition  = new daum.maps.LatLng(latlong.latitude, latlong.longitude); 
        var options = {
            center: new daum.maps.LatLng(latlong.latitude, latlong.longitude),
            level: 3,
            };
         
       var map = new daum.maps.Map(container, options);
       
       var marker = new daum.maps.Marker({
           position: markerPosition
       });
       marker.setMap(map);
       
       var mapTypeControl = new daum.maps.MapTypeControl();
       map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

       var zoomControl = new daum.maps.ZoomControl();
       map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
    });
</script>






<div class="container">
  <h2>${complex.title }</h2>
  <table class="table table-bordered">
    <tbody>
      <tr>
        <th width="20%">거래종류</th>
        <td width="80%" colspan="5">${complex.buyType }</td>
      </tr>
    
      <tr>
        <c:choose>
          <c:when test="${complex.buyType ==  '매매'}">
            <th width="20%">매매가</th>
		        <td width="80%" colspan="5">${complex.salePrice }만원</td>
          </c:when>
          <c:when test="${complex.buyType ==  '전세'}">
            <th width="20%">전세보증금</th>
            <td width="80%" colspan="5">${complex.rentDeposit }만원</td>
          </c:when>
          <c:otherwise>
            <th width="20%">월세보증금</th>
		        <td width="30%" colspan="2">${complex.mRentDeposit }만원</td>
		        <th width="20%">월세</th>
		        <td width="30%" colspan="2">${complex.mRentPrice }만원</td>
          </c:otherwise>
        </c:choose>
      </tr>
      
      <tr>
        <th width="14%">입주가능날짜</th>
        <td width="20%">${complex.expectDate }</td>
        <th width="13%">공급면적</th>
        <td width="20%">${complex.supplyArea }m²</td>
        <th width="13%">전용면적</th>
        <td width="20%">${complex.exclusiveArea }m²</td>
      </tr>
     
      <tr>
        <th width="14%">동</th>
        <td width="20%">${complex.block }</td>
        <th width="13%">층</th>
        <td width="20%">${complex.tier }</td>
        <th width="13%">방향</th>
        <td width="20%">${complex.direction }</td>
      </tr>
      
      <tr>
        <th width="14%">방</th>
        <td width="20%">${complex.roomNumber }</td>
        <th width="13%">욕실</th>
        <td width="20%">${complex.bathNumber }</td>
        <th width="13%">거실</th>
        <td width="20%">${complex.livingNumber }</td>
      </tr>
    </tbody>
  </table>
  
  
  <table class="table table-bordered">
    <tbody>
      <tr>
        <th width="20%">주소</th>
        <td width="80%" colspan="5">${complex.adress }</td>
      </tr>
    
      <tr>
        <th width="14%">총동수</th>
        <td width="20%">${complex.blockTotal }</td>
        <th width="13%">총세대수</th>
        <td width="20%">${complex.doorTotal }</td>
        <th width="13%">총주차대수</th>
        <td width="20%">${complex.parkTotal }</td>
      </tr>
      
      <tr>
        <th width="20%">최고층</th>
        <td width="30%" colspan="2">${complex.highestTier }</td>
        <th width="20%">최저층</th>
        <td width="30%" colspan="2">${complex.lowestTier }</td>
      </tr>
     
     
     <tr>
        <th width="20%">난방방식</th>
        <td width="30%" colspan="2">${complex.heatSystem }</td>
        <th width="20%">난방연료</th>
        <td width="30%" colspan="2">${complex.heatFuel }</td>
      </tr>
     
     <tr>
        <th width="20%">건설사명</th>
        <td width="30%" colspan="2">${complex.companyName }</td>
        <th width="20%">용적률</th>
        <td width="30%" colspan="2">${complex.floorAreaRation }</td>
      </tr>
     
      <tr>
        <th width="20%">입주년일</th>
        <td width="30%" colspan="2">${complex.moveDate }</td>
        <th width="20%">준공년일</th>
        <td width="30%" colspan="2">${complex.completeDate }</td>
      </tr>
      
    </tbody>
  </table>
  
  
    <table class="table table-bordered">
    <tbody>
      <tr>
        <th width="25%">발코니</th>
        <c:choose>
          <c:when test="${complex.balcony == true }">
		        <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
        <th width="25%">벽지</th>
        <c:choose>
          <c:when test="${complex.wallpaper == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
      </tr>
      
      <tr>
        <th width="25%">화장실</th>
        <c:choose>
          <c:when test="${complex.bathRoom == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
        <th width="25%">천장</th>
        <c:choose>
          <c:when test="${complex.ceiling == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
      </tr>
      
      <tr>
        <th width="25%">마루</th>
        <c:choose>
          <c:when test="${complex.floor == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
        <th width="25%">부엌</th>
        <c:choose>
          <c:when test="${complex.kitchen == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
      </tr>
      
      <tr>
        <th width="25%">전실</th>
        <c:choose>
          <c:when test="${complex.entrance == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
        <th width="25%">신발장</th>
        <c:choose>
          <c:when test="${complex.shoeRack == true }">
            <td width="25%">O</td>
          </c:when>
          <c:otherwise>
            <td width="25%">X</td>
          </c:otherwise>
        </c:choose>
      </tr>
      
    </tbody>
  </table>
  
  
</div>







<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <c:forEach var="photo" items="${complex.photos }" varStatus="status">
        <c:if test="${status.index == 0 }">
	        <div class="item active">
	         <img src="http://192.168.0.43:9999${photo.photoPath }" alt="Sejin" width="460" height="345">
	        </div>
        </c:if>
        <c:if test="${status.index != 0 }">
          <div class="item">
           <img src="http://192.168.0.43:9999${photo.photoPath }" alt="Sejin" width="460" height="345">
          </div>
        </c:if>
      </c:forEach>

  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


</body>
</html>