<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
<html>
<head>
    <meta charset="utf-8">
    <link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <title>TEST</title>
    <script src="http://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="<%=cp%>/resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
 

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">세진부동산</a>
      </div>

      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">홈</a></li>
          <li><a href="#">매물검색</a></li>
          <li><a href="#">부동산소개</a></li>
          <li><a href="#">즐겨찾기</a></li>
        </ul>

      </div>
      <!--/.navbar-collapse -->
    </div>
  </nav>



</body>
</html>