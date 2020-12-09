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
		margin-top: 20px;
	}
	
	.loginForm{
		width : 500px;
		min-width: 500px;
		margin: 0 auto;
		margin-bottom: 20px;
	}
	
	.list-group-item {
	    position: relative;
	    display: block;
	    padding: 10px 15px;
	    margin-bottom: -1px;
	    background-color: #fff;
	    border: 1px solid #ddd;
	}
	
	.login{
		width: 100%;
    	border: none;
	}
	
	.joinRow{
		margin-bottom: 20px;
	}
	
	.joinbtn{
		width: 100%;
		height: 44px;
		background-color: #FA0050;
		color: white;
		font-size: 16px;
		font-weight: bold;
		border: none;
	}
	
	
</style>
</head>
<body>
	<c:import url="../template/header_notSearch.jsp"></c:import>
	<div class="container">
	   <div class="loginForm">	
			<div class="joinRow">
				<div><label for="id">아이디</label></div>
				<div class="list-group-item"><input type="text" class="login" id="login" name="login" placeholder="아이디를 입력하세요" required="required"></div>
			</div>
			
			<div class="joinRow">
				<div><label for="id">비밀번호</label></div>
				<div class="list-group-item"><input type="text" class="login" id="login" name="login" placeholder="아이디를 입력하세요" required="required"></div>
			</div>
			
			<div class="joinRow">
				<div><label for="id">비밀번호확인</label></div>
				<div class="list-group-item"><input type="text" class="login" id="login" name="login" placeholder="아이디를 입력하세요" required="required"></div>
			</div>
			
			<div class="joinRow">
				<div><label for="id">주소</label></div>
				<div class="list-group-item"><input type="text" class="login" id="login" name="login" placeholder="아이디를 입력하세요" required="required"></div>
			</div>
			
			<div class="joinRow">
				<div><label for="id">핸드폰번호</label></div>
				<div class="list-group-item"><input type="text" class="login" id="login" name="login" placeholder="아이디를 입력하세요" required="required"></div>
			</div>
			
			<div class="joinRow">
				<button class="joinbtn">가입하기</button>
			</div>
		</div>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>