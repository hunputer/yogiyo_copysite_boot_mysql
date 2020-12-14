<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	.container{
		padding: 100px 5px;
    	max-width: 800px;
    	margin: 0 auto;
	}

	.header{
		display: block;
	    padding: 15px 30px;
	    margin : 0px 0px;
	    background-color: #FA0050;
	    font-size: 18px;
	    letter-spacing: -1px;
	    color: #ffffff;
	    font-weight: normal;
	}
	
	.insertText{
		width: 100%;
	    height: 110px;
	    border: 0;
	    font-size: 13px;
	    line-height: 20px;
	    color: #222222;
	    resize: none;
	}
	
	.insertTitle{
		width: 100%;
	    height: 25px;
	    border: 0;
	    font-size: 13px;
	    line-height: 20px;
	    color: #222222;
	    resize: none;
	}
</style>
</head>
<body>
	<div style="margin: 0px;width: 100%">
		<h1 class="header">리뷰 작성하기</h1>
	</div>
	<form action="./setReviewInsert" method="post" enctype="multipart/form-data">
	<input type="hidden" name="orderNum" value="${vo.num}">
	<input type="hidden" name="storeNum" value="${vo.storeNum}">
	<input type="hidden" name="id" value="${member.id}">
	<div style="padding: 30px 30px">
		<select name="starCount">
			<option value="1">★
			<option value="2">★★
			<option value="3">★★★
			<option value="4">★★★★
			<option value="5">★★★★★
		</select>
		
		<div style="padding: 18px 18px;margin-bottom: 30px;border: 1px solid #cfcfcf">
			<textarea name="contents" class="insertText" placeholder="리뷰를 작성하세요" maxlength="1000"></textarea>
		</div>
		
		<div style="margin-bottom: 30px;">
			<input type="file" name="file">
		</div>
		<button class="btn btn-dark">등록</button>	
	</div>
	</form>
	
</body>
</html>