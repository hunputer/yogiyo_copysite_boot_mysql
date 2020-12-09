<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	body{
		background-color: #fafafa;
	}
	
	.container{
		padding: 5px;
    	max-width: 1090px;
    	margin: 0 auto;
	}
	
	.cal{
		position : relative;
		display : inline-block;
		padding-left: 5px;
    	padding-right: 5px;
    	width: 252.5px;
    	height: 230px;
	}
	
	.cal-h1{
		position: absolute;
    	top: 7%;
    	left: 7%;
    	color: #333;
    	font-size: 110%;
    	font-weight: bold;
	}
	
	.thumbnail {
	    position: relative;
	    border: none;
	    padding: 0;
	    margin: 5px 0;
	    border: 1px solid #d9d9d9 !important;
	    border-radius: 0px;
	    height: 220px;
    }
    
    .thumbnail img {
    	float: right;
	}
}
	
</style>
</head>
<body>
<c:import url="./template/header.jsp"></c:import>
<div class="container">
   <div class="cal">
   	<a href="${pageContext.request.contextPath}/store/storeList">
	   	<div class="thumbnail">
	   	 	<h1 class="cal-h1">전체보기</h1>
	   	 	<img src="./images/category-01.png">
	   	</div>
	   </div>
   </a>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=1">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">프랜차이즈</h1>
   	 	<img src="./images/category-10.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=2">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">치킨</h1>
   	 	<img src="./images/category-02.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=3">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">피자/양식</h1>
   	 	<img src="./images/category-03.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=4">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">중국집</h1>
   	 	<img src="./images/category-04.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=5">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">한식</h1>
   	 	<img src="./images/category-05.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=6">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">일식/돈까스</h1>
   	 	<img src="./images/category-06.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=7">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">족발/보쌈</h1>
   	 	<img src="./images/category-07.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=8">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">분식</h1>
   	 	<img src="./images/category-09.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=9">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">카페/디저트</h1>
   	 	<img src="./images/category-11.png">
   	</div>
   	</a>
   </div>
   
   <div class="cal">
   <a href="${pageContext.request.contextPath}/store/storeList?categoryNum=10">
   	<div class="thumbnail">
   	 	<h1 class="cal-h1">편의점/마트</h1>
   	 	<img src="./images/category-convenience-store.png">
   	</div>
   	</a>
   </div>
</div>

<c:import url="./template/footer.jsp"></c:import>
</body>
</html>