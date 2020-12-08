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
	    border : 1px solid #ea7266;
	    float: right;
	    color: white;
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
	
</style>
</head>
<body>
	<header>
		<div style="min-width: 1000px;">
			<div class="nav-top">
				<div class="nav-mid">
					<a href="${pageContext.request.contextPath}/"><h1 class="logo"></h1></a>
					<input type="button" style="background-color: #ff8a00;" class="btn-cart" value="주문표">
					<input type="button" id="bnt-login" class="bnt-login" value="로그인">
				</div>
			</div>
			<div id="searchForm" class="searchForm">
				<div style="text-align: center; height : 40px;">
					<input style="margin-right: 0px" id="search" type="text" placeholder="건물명, 도로명, 지번으로 검색하세요.">
					<input type="button" id="searchBtn" value="검색">
				</div>
			</div>
		</div>
	</header>
	
	<script type="text/javascript">
		$("#bnt-login").click(function(){
			location.href="${pageContext.request.contextPath}/member/memberLogin"
		});
	</script>
	
</body>
</html>