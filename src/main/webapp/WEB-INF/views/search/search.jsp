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
<title>매물검색 - 세진공인중개부동산</title>
</head>
<body>

<nav class="navbar navbar-default" style="margin-bottom: 0px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://192.168.0.43:9999/website/main.do">세진부동산 02-568-3366</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="http://192.168.0.43:9999/website/main.do">Home</a></li>
      <li><a href="http://192.168.0.43:9999/website/search/search.do">매물검색</a></li>
      <li><a href="#">부동산소개</a></li>
      <li><a href="#">즐겨찾기</a></li>
    </ul>
  </div>
</nav>
<!-- 
<div class="container">
  <div class="row">
    <div>
      <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Tutorials
        <span class="caret"></span></button>
        <ul class="dropdown-menu">
			      <li><a href="#">HTML</a></li>
			      <li><a href="#">CSS</a></li>
			      <li><a href="#">JavaScript</a></li>
			      <li class="divider"></li>
			      <li><a href="#">About Us</a></li>
        </ul>
        </div>    
    </div>
  
  
    <div>
      <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Tutorials
        <span class="caret"></span></button>
        <ul class="dropdown-menu">
            <li><a href="#">HTML</a></li>
            <li><a href="#">CSS</a></li>
            <li><a href="#">JavaScript</a></li>
            <li class="divider"></li>
            <li><a href="#">About Us</a></li>
        </ul>
        </div>    
    </div>  
  
  
  </div>

  
</div>
 -->
<div class="container" style="margin-top: 20px">
  <form class="form-inline" method="post" action="http://192.168.0.43:9999/website/search/search.do">
    <div class="form-group" style="margin-right: 10px">
      <label for="email">거래구분 : </label>
      <select class="form-control" name="buyType">
       <option value="전체">전체</option>
       <option value="매매">매매</option>
       <option value="전세">전세</option>
       <option value="월세">월세</option>
      </select>

    </div>       
   
    <div class="form-group" style="margin-right: 10px">
      <label for="email">아파트단지 : </label>
      <select class="form-control" name="cno">
			  <option value="0">전체</option>
			  <option value="1">개나리SK뷰</option>
			  <option value="2">동부센트레빌</option>
			  <option value="3">래미안펜타빌</option>
			  <option value="4">역삼IPARK</option>
			  <option value="5">개나리4차</option>
			  <option value="6">역삼자이</option>
			  <option value="7">현대까르띠에710</option>
			  <option value="8">테헤란아이파크</option>
			  <option value="9">개나리푸르지오</option>
			  <option value="10">역삼e-편한세상</option>
			  <option value="11">개나리래미안</option>
			  <option value="12">역삼푸르지오</option>
      </select>
    </div>

    <button type="submit" class="btn btn-default" >검색</button>
  </form>
</div>
<hr>



<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8 col-xs-offset-2">
      <c:forEach var="apartments" items="${alist}">
        <div class="col-xs-3" onclick="location.href='http://192.168.0.43:9999/website/search/details.do?ano=${apartments.ano}&cno=${apartments.cno }'">
          <div class="thumbnail">
            <img src="http://192.168.0.43:9999${apartments.photos[0].photoPath}" alt="..." style="min-height:200px;height:200px;width: 300px">
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