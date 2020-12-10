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
	html, body {
	    letter-spacing: 0px;
	    font-family: 맑은고딕, "malgun gothic", 돋움, Dotum, "Apple SD Gothic Neo", Helvetica, sans-serif;
		background-color: #fafafa;
	}
	
	.container{
		min-width: 900px;
	}
	
	.category-menu {
    	background-color: #fff;
    	position: relative;
	    border-left: none;
	    margin-top: 0;
	    margin-right: 0;
	    box-shadow: 2px 2px 3px 0px rgba(0,0,0,0.25);
    }
    
    .category-menu ul {
	    max-width: 1090px;
	    margin: 0 auto;
	    border-top: 1px solid #d9d9d9;
	    position: relative;
	    padding-left: 0;
	}
	
	.category-menu ul a{
		color: black;
	}
	
	.category-menu li:hover, .category-menu li:focus, .category-menu li.active {
	    background-image: none;
	    background-color: #333;
	    color: #fff;
	}
	
	.category-menu li {
	    float: left;
	    font-size: 13px;
	    text-align: center;
	    list-style: none;
	    border-right: 0;
	    border-bottom: 0;
	    padding: 20px 0;
	    background: url(../images/sprite-icon.png) no-repeat -999px 20px;
	    width: 90px;
	}
	
	.search-div{
			position : relative;
		    padding-bottom: 0;
    		margin: 0;
    		border-bottom: 1px solid #E5E5E5;
    		width: 100%;
	}
	
	.ng-scope > p {
	    max-width: 1020px;
	    padding: 15px 10px 7px 10px;
	}
	
	.col-sm-6{
		padding-left: 10px;
    	padding-right: 10px;
    	width : 510px;
    	margin-right : 0px;
    	min-width : 420px;
    	height: 118px;
    	float: left;
	}
	
	.item {
	    position: relative;
	    border: 1px solid #d9d9d9;
	    background: #fff;
	    padding: 0 8px;
	    margin-bottom: 10px;
	    height: 108px;
	    box-sizing: border-box;
	    width: 550px;
	    float: left;
	}
	
	.logo1 {
		position : absolute;
	    width: 70px;
	    height: 70px;
	    top : 17px;
	    left : 10px;
	    border: 1px solid #d9d9d9;
	}
	
	.restaurant-name {
	    font-size: 120%;
	    position : absolute;
	    top : 30px;
	    left : 93px;
	    width: 200px;
	}
	
	.restaurant-info{
		position : absolute;
	    top : 55px;
	    left : 93px;
	    width: 300px;
	    font-size: 12px;
	}
	
	.restaurant-star{
		color: #ffa800;
		font-size: 12px;
	}
	
	.restaurant-time{
		position : absolute;
	    bottom : 5px;
	    right : 10px;
	    width: 120px;
	    text-align : right;
	    font-size: 12px;
	    color: gray;
	    
	}
	
	.searchBox{
		border: 1px solid #e8ebee;
	    border-radius: 6px;
	    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.03);
	    box-shadow: 0 1px 1px 0 rgba(0,0,0,.03);
	    background-color: #fff;
	    width: 400px;
	    margin: 10px auto;
	}
	
	.hotTitle{
		font-weight: bold;
		font-size: 14px;
	}
	
	.search2{
		width: 80%;
		padding: 6px 12px;
	}
	
	.searchBnt2{
		width: 17%;
		padding: 6px 12px;
		background-color: #FF8A00;
		color: #fff;
		border: none;
		height: 36px;
	}
	
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div id="category" class="category-menu clearfix collapse in" aria-expanded="true">
		    <ul>
		    	<a href="${pageContext.request.contextPath}/store/storeList?address=${param.address}">
			    	<li>
			      		<span class="category-name ng-binding">전체보기</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=1&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">프랜차이즈</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=2&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">치킨</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=3&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">피자/양식</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=4&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">중국집</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=5&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">한식</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=6&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">일식/돈까스</span>
			      	</li>
			    </a>  	
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=7&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">족발/보쌈</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=8&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">분식</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=9&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">카페/디저트</span>
			      	</li>
		      	</a>
		      	
		      	<a href="${pageContext.request.contextPath}/store/storeList?categoryNum=10&address=${param.address}">
			      	<li>
			      		<span class="category-name ng-binding">편의점/마트</span>
			      	</li>
		      	</a>
		    </ul>
		  </div>
		  <div class="search-div">
		  	  <div class="searchBox">
   				<div style="padding: 0px 20px; border-bottom: 1px solid #e8ebee;">
   					<h3 class="hotTitle">인기검색어</h3>
   				</div>
   				<div id="searchResult">
	   				
   				</div>
   				<div style="padding: 0px 20px; margin-bottom: 5px;">
   					<form action="./storeList2" method="get">
		   				<input type="text" class="search2" name="searchName" placeholder="찾고싶은 음식점을 검색하세요">
		   				<input type="hidden" name="address" value="${param.address}">
		   				<button class="searchBnt2">검색</button>
	   				</form>
   				</div>
   			  </div>
   			  
		  </div>
	
		  <div class="container">		  
			  <div class="ng-scope">
        			<p>요기요 등록 음식점</p>
      		  </div>
      		  <c:forEach items="${list}" var="vo">
	      		  <div class="col-sm-6">
	      		  	<div class="item">
	      		  		<div class="logo1">
	      		  			
	      		  		</div>
	      		  		<div class="restaurant-name">
	      		  			${vo.storeName}
	      		  		</div>
	      		  		<div class="restaurant-info">
	      		  			<span class="restaurant-star">★ 4.3</span> | 리뷰 618 | ${vo.storeManageVO.minPrice}원 이상 배달
	      		  		</div>
	      		  		<div class="restaurant-time">
	      		  				${vo.storeManageVO.takeTime}분 예상
	      		  		</div>
	      		  	</div>
	      		  	</div>
      		  	</c:forEach>
	      </div>
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
		hit();
	
		setInterval(hit, 50000)
		
		function hit(){
			$.get("./searchList" ,function(data) {
				$("#searchResult").html(data);
			})
		}
	</script>
</body>
</html>