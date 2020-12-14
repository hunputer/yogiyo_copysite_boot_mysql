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
	.orderList{
		width: 500px;
		height : 150px;
		margin: 10px auto;
		border: 1px solid #DCDCDC;
		padding: 20px;
	}
	
	.OstoreName{
		font-size: 14px;
		font-weight: bold;
		margin-top: 5px;
	}
	
	.OContents{
		font-size: 12px;
		color: gray;
	}
	
	.reviewBnt, .storeBnt{
		display : inline-block;
		border: 1px solid #DCDCDC;
		width : 100px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		margin-right: 10px;
		cursor: pointer;
		color: gray;
	}
	
</style>
</head>
<body>
	<c:import url="../template/header_mypage.jsp"></c:import>
	<div class="container">
		<c:forEach items="${list}" var="vo">
			<div class="orderList">
				<h1 class="OstoreName">${vo.storeVO.storeName} <span style="font-size: 10px;color: gray">${vo.regDate}</span></h1>
				<h1 class="OContents">${vo.orderContents} ${vo.totalPrice}원</h1>
				<div style="margin-top: 20px">
					<div class="reviewBnt" title="${vo.num}">리뷰쓰기</div>
					<div class="storeBnt" title="${vo.storeVO.num}">가게보기</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
		$(".reviewBnt").click(function(){
			var option = "width = 576, height = 500, top = 100, left = 200, location = no";
			var num = $(this).attr("title");
			window.open("./setReviewInsert?num="+num,"insert",option);
		});

		$(".storeBnt").click(function(){
			var num = $(this).attr("title");
			location.href = "../storeDetail/getDetail?num="+num;
		});
	</script>
	
</body>
</html>