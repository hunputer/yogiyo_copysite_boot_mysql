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

<script src="../js/kakao.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
		Kakao.init('db16d3e876bdf25ace8482a5b3b5a6b3');
		Kakao.isInitialized();
	</script>

<style type="text/css">
	body{
		background-color: #fafafa;
	}
	
	.container{
		margin-top: 20px;
	}
	.title{
		display: block;
	    background: url(../images/logo-yogiyo-2.png) no-repeat;
	    background-size: 109px;
	    width: 109px;
	    height: 45px;
	    text-indent: -9999em;
	    overflow: hidden;
	    margin: 0 auto 17px auto;
	}
	
	.list-group {
	    padding-left: 0;
	    margin-bottom: 20px;
	}
	
	.list-group-item {
	    position: relative;
	    display: block;
	    padding: 10px 15px;
	    margin-bottom: -1px;
	    background-color: #fff;
	    border: 1px solid #ddd;
	    max-width: 800px;
	    margin: 0 auto;
	}
	
	.list-group-item input{
		width: 100%;
    	border: none;
	}
	
	.btn_login{
		display : block;
		border-color: #ccc;
    	background-color: #ccc;
    	max-width: 800px;
	    margin: 0 auto;
	    width: 100%;
   	 	height: 40px;
    	border-radius: 0;
    	border: 1px solid transparent;
    	padding: 6px 12px;
    	font-weight: normal;
    	color: #ffffff;
	}
	
	.signupbox{
		text-align: center;
    	margin: 0 auto;
	}
	
	.signup-img {
	    padding-top: 16px;
	    width: 100%;
	    max-width: 800px;
	    cursor: pointer;
	}
</style>
</head>
<body>
	<c:import url="../template/header_notSearch.jsp"></c:import>
	<div class="container">	
		<div class="title"></div>
		<form action="./memberLogin" method="post">
			<ul class="list-group">
		        <li class="list-group-item">
		          <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" class="ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-pattern" required="required">
		        </li>
		        <li class="list-group-item">
		          <input type="password" id="pw" name="pw" placeholder="비밀번호 입력하세요" class="ng-pristine ng-untouched ng-invalid ng-invalid-required" required="required">
		        </li>
	      	</ul>
	      	<button type="submit" class="btn_login">로그인</button>
      	</form>
      	<div style="width: 100%;max-width:800px; margin: 0 auto;">
			  <a style="float: left;width: 50%" id="kakao-login-btn"></a>
		</div>
      	<div class="signupbox">
    		<a href="./memberJoin"><img src="../images/signin_banner.png" class="signup-img"></a>
  		</div>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
		Kakao.Auth.createLoginButton({
		    container: '#kakao-login-btn',
		    success: function(authObj) {
		      Kakao.API.request({
		        url: '/v2/user/me',
		        success: function(res) {
		          const json = JSON.stringify(res);
		          const obj = JSON.parse(json);
		          $.post("./kakaoLogin",{id:obj.kakao_account.email, name:obj.properties.nickname},function(data){
		        	 
		          })
		          location.href="./loginMsg"
		        },
		        fail: function(error) {
		          alert(
		            'login success, but failed to request user information: ' +
		              JSON.stringify(error)
		          )
		        },
		      })
		    },
		    fail: function(err) {
		      alert('failed to login: ' + JSON.stringify(err))
		    },
		  })
	</script>
</body>
</html>