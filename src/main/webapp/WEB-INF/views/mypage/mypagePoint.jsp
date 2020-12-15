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
		padding: 100px 5px;
    	max-width: 800px;
    	margin: 0 auto;
	}
</style>
</head>
<body>
	<c:import url="../template/header_mypage.jsp"></c:import>
	<div class="container">
	
	<div style="width: 400px;margin: 20px auto">
		<h1 style="font-size: 20px">${member.name}님의 보유 포인트는 ${member.point}P 입니다</h1>
	</div>
	
	<div style="width: 200px;margin: 20px auto">
		<h1 style="font-size: 12px;margin-bottom: 0px">1원 이상 1원 단위로 사용 가능</h1>
		<h1 style="font-size: 12px;margin-top: 5px">최대 50만원까지 보유 가능</h1>
	</div>
	
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>