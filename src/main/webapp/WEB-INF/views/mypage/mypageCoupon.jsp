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
    	max-width: 600px;
    	margin: 0 auto;
	}
	
	.couponList{
		border: 1px solid #dcdcdc;
		padding: 10px;
		width:545px;
		height:390px;
		margin-bottom: 10px;
	}
	
	.couponName{
		font-size: 15px;
		font-weight: bold;
	}
	
</style>
</head>
<body>
	<c:import url="../template/header_mypage.jsp"></c:import>
	<div class="container">
		<c:forEach items="${list}" var="vo">
			<div class="couponList">
				<h1 class="couponName">${vo.name}</h1>
				<img alt="" src="${pageContext.request.contextPath}/images/${vo.fileName}" width="523px" height="318px">
			</div>
		</c:forEach>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
	
</body>
</html>