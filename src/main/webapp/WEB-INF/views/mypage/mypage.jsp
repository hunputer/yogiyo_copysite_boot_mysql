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
    	max-width: 800px;
    	margin: 0 auto;
	}
	
	.profile{
		margin: 20px auto;
		border: 1px solid gray;
		border-radius: 50%;
		width: 170px;
		height : 170px;
	}
	
	.list-group-items {
	    position: relative;
	    display: inline-block;
	    padding: 10px 15px;
	    margin-bottom: -1px;
	    background-color: #fff;
	    border: 1px solid #ddd;
	    width: 250px;
	    margin: 0 auto;
	}
	
	.idForm{
		width : 100%;
		border : none;
	}
	
	.idBnt{
		display: inline-block;
	}
	
	.idBntk{
		width : 60px;
		height : 44px;
		border: none;
		background-color: #FA0050;
		color : #fff;
	}
	
}
	
</style>
</head>
<body>
<c:import url="../template/header_mypage.jsp"></c:import>
<div class="container">
   <div class="profile">
   	  <img alt="" src="${pageContext.request.contextPath}/images/m.top_icon01.png">
   </div>
   <div style="margin: 0 auto;width:350px;padding-left: 20px;">
	   <div class="list-group-items">
			<input type="text" id="id" name="id" class="idForm" value="${member.name}">
	   </div>
	   <div class="idBnt">
	   		<button class="idBntk">변경</button>
	   </div>
   </div>
   <div style="border-top : 1px solid #818181;margin-top: 20px;">
   		
   </div>
</div>

<c:import url="../template/footer.jsp"></c:import>
</body>
</html>