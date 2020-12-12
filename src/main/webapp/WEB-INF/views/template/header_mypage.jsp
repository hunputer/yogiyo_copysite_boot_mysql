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
  <script src="${pageContext.request.contextPath}/js/kakao.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
		Kakao.init('db16d3e876bdf25ace8482a5b3b5a6b3');
		Kakao.isInitialized();
	</script>
<style type="text/css">
	html, body {
    	min-width: 320px;
    	letter-spacing: 0px;
   	 	font-family: 맑은고딕, "malgun gothic", 돋움, Dotum, "Apple SD Gothic Neo", Helvetica, sans-serif;
    	width: auto !important;
	}
	
	.nav-top{
		width : 100%;
		height : 78px;
		background-color : #fa0050;
		position: relative;
    	min-width: 320px;
    	margin: 0 auto;
	}
	
	.logo{
		background: url(${pageContext.request.contextPath}/images/logo-yogiyo.png) no-repeat;
    	background-size: 90px;
    	width: 90px;
    	height: 38px;
    	overflow: hidden;
    	margin: 20px 10px;
    	float: left;
	}
	
	.nav-mid{
		width:1090px;
		margin: 0 auto;
		height : 78px;
		background-color : #fa0050;
		position: relative;
    	min-width: 320px;
	}
	
	.bnt-login, .btn-cart{
		position: relative;
	    top: 0;
	    left: 0;
	    margin: 18px 0 7px 10px;
	    width: 150px;
	    max-height: 40px;
	    padding: 7px 0;
	    text-align: center;
	    font-size: 18px;
	    background-color: #fa0050;
	    border : 1px solid #fff;
	    float: right;
	    color: white;
	    border-radius: 5px;
	}
	
	.mypageImg{
		float : right;
		 margin: 25px 0 7px 10px;
	}
	
	.searchForm{
		padding: 125px 100px 70px 100px;
	    background-image: url(${pageContext.request.contextPath}/images/bg-top.png);
	    background-color: #3b2114;
	    background-repeat: no-repeat;
	    background-position: center;
	    margin : 0 auto;
	}
	
	#search{
		border: none;
    	border-right: 0;
    	border-radius: 4px;
    	border-top-right-radius: 0;
    	border-bottom-right-radius: 0;
    	height: 40px;
    	-webkit-box-shadow: inset 0 0 0 rgba(0, 0, 0, 0);
    	box-shadow: inset 0 0 0 rgba(0, 0, 0, 0);
    	-webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
    	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
    	width: 279.2px;
    	background-color: #fff;
    	padding: 6px 12px;
	}
	
	#searchBtn{
		background: #ff8a00;
	    background-image: none !important;
	    color: #fff;
	    width: 60px !important;
	    height: 40px;
	    text-indent: 0 !important;
	    z-index: 2;
	    border : none;
	    border-radius: 4px;
    	border-top-left-radius: 0;
    	border-bottom-left-radius: 0;
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
	
</style>
</head>
<body>
	<header>
		<div style="min-width: 1000px;">
			<div class="nav-top">
				<div class="nav-mid">
					<a href="${pageContext.request.contextPath}/"><h1 class="logo"></h1></a>
					<input type="button" style="background-color: #fff; color: #fa0050" class="btn-cart" value="주문표">
					<c:if test="${member == null}">
						<input type="button" id="btn-login" class="bnt-login" value="로그인">
					</c:if>
					
					<c:if test="${member != null}">
						<input type="button" id="btn-logout" class="bnt-login" value="로그아웃">
						<a href="${pageContext.request.contextPath}/mypage"><img class="mypageImg" alt="" src="${pageContext.request.contextPath}/images/m.top_icon01.png" width="30px" height="30px"></a>
					</c:if>
				</div>
			</div>
			<div id="searchForm" class="searchForm">
				<div style="text-align: center; height : 40px;">
				<form action="${pageContext.request.contextPath}/store/storeList" method="get">
					<input style="margin-right: 0px" id="search" name="address" type="text" value="${param.address}" placeholder="건물명, 도로명, 지번으로 검색하세요.">
					<input type="submit" id="searchBtn" value="검색">
				</form>	
				</div>
			</div>
		</div>
		
		
		<div id="category" class="category-menu clearfix collapse in" aria-expanded="true">
		    <ul>
		    	<a href="#">
			    	<li>
			      		<span class="category-name ng-binding">내정보</span>
			      	</li>
		      	</a>
		      	
		      	<a href="#">
			    	<li>
			      		<span class="category-name ng-binding">회원등급</span>
			      	</li>
		      	</a>
		      	
		      	<a href="#">
			    	<li>
			      		<span class="category-name ng-binding">쿠폰함</span>
			      	</li>
		      	</a>
		      	
		      	<a href="#">
			    	<li>
			      		<span class="category-name ng-binding">포인트</span>
			      	</li>
		      	</a>
		      	
		      	<a href="#">
			    	<li>
			      		<span class="category-name ng-binding">주문내역</span>
			      	</li>
		      	</a>
		      	
		      	<a href="#">
			    	<li>
			      		<span class="category-name ng-binding">리뷰관리</span>
			      	</li>
		      	</a>
		      	
		    </ul>
		  </div>
		
	</header>
	
	<script type="text/javascript">
		$("#btn-login").click(function(){
			location.href="${pageContext.request.contextPath}/member/memberLogin"
		});

		$("#btn-logout").click(function(){
			unlinkApp();
		});

		function unlinkApp() {
			Kakao.Auth.logout(function(data) {
				setTimeout(function(){
					location.href="${pageContext.request.contextPath}/member/memberLogout"
				}, 1000);
			});
		  }
	</script>
	
</body>
</html>