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
	
	.leveldetail{
		position : relative;
		width : 300px;
		height: 100px;
		margin: 5px auto;
		background-color: #f7f8f8;
	}
	
	.levelImg{
		position : relative;
		top: 0px;
		left: 0px;
	}
	
	.levelName{
		position : absolute;
		top: 10px;
		left: 110px;
		font-size: 14px;
		display: inline-block;
		font-weight: bold;
		margin-top: 13px;
	}
	
	.levelContent{
		font-size: 12px;
		position : absolute;
		top: 28px;
		left: 110px;
		color: gray;
	}
	
	.levelService{
		font-size: 12px;
		position : absolute;
		top: 48px;
		left: 110px;
	}
</style>
</head>
<body>
	<c:import url="../template/header_mypage.jsp"></c:import>
	<div class="container">
	<div>
		<div style="text-align: center">
			<c:if test="${member.memberLevel == '요기프렌드'}">
				<img alt="" src="../images/friend.JPG" width="100px" height="100px">
			</c:if>
			<c:if test="${member.memberLevel == '요기마스터'}">
				<img alt="" src="../images/master.JPG" width="100px" height="100px">
			</c:if>
			<c:if test="${member.memberLevel == '요기VIP'}">
				<img alt="" src="../images/vip.JPG" width="100px" height="100px">
			</c:if>
		</div>
		<div style="width: 150px;margin: 20px auto">
			<h1 style="font-size: 20px;font-size: 13px;text-align: center"><span style="color:#FA0050;font-weight: bold">${member.name}</span>님은 <br>현재 <span style="color:#FA0050;font-weight: bold">${member.memberLevel}</span> 입니다</h1>
		</div>
	</div>
	
	<div style="margin-top: 100px">
		<div>
			<h1 style="font-size: 20px;text-align: center;">해택은 요기부터! 요기요 회원등급</h1>
			<h1 style="font-size: 12px;text-align: center;color: gray">요기요 가입 회원님에 한하여 이전 월 주문 수에 따라<br> 쿠폰 해택을 제공해드립니다.</h1>
		</div>
		<div class="leveldetail">
			<img class="levelImg" alt="" src="../images/vip.JPG" width="100px" height="100px">
			<h1 class="levelName">요기VIP</h1>
			<h1 class="levelContent">이전 월 터치 주문 수 15회 이상</h1>
			<h1 class="levelService">월간 총 5,000원 쿠폰북 제공</h1>
		</div>
		<div class="leveldetail">
			<img class="levelImg" alt="" src="../images/master.JPG" width="100px" height="100px">
			<h1 class="levelName">요기마스터</h1>
			<h1 class="levelContent">이전 월 터치 주문 수 5회 이상</h1>
			<h1 class="levelService">월간 총 2,000원 쿠폰북 제공</h1>
		</div>
		<div class="leveldetail">
			<img class="levelImg" alt="" src="../images/friend.JPG" width="100px" height="100px">
			<h1 class="levelName">요기프렌드</h1>
			<h1 class="levelContent">이전 월 터치 주문 수 0~5회 이상</h1>
			<h1 class="levelService">월간 총 1,000원 쿠폰북 제공</h1>
		</div>
	</div>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>