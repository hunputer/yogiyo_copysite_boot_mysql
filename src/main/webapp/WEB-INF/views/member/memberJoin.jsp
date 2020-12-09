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
	
	#joinbtn{
		width: 100%;
		height: 44px;
		background-color: #FA0050;
		color: white;
		font-size: 16px;
		font-weight: bold;
		border: none;
	}
	
	.memberSelect{
		width: 100%;
	    height: 22px;
	    padding: 7px 8px 6px 7px\9;
	    font-size: 15px;
	    line-height: 18px;
	    color: #000;
	    border: none;
	    border-radius: 0;
	}
	
	#idCheckContent{
		font-size: 12px;
		color: blue;
	}
	
	#pwCheckContent{
		font-size: 12px;
		color: blue;
	}
	
	
</style>
</head>
<body>
	<c:import url="../template/header_notSearch.jsp"></c:import>
	<div class="container">
		   <div class="loginForm">
		   	   <form id="frm" action="./memberJoin" method="post">
		   		<div class="joinRow">
		   			<div><label for="id">회원종류</label></div>
					<div class="list-group-item">
						<select class="memberSelect" name="memberCode">
							<option value="1">일반회원</option>
							<option value="2">점주회원</option>
						</select>
					</div>
		   		</div>
		   	
				<div class="joinRow">
					<div><label for="id">아이디</label></div>
					<div class="list-group-item"><input type="text" class="login" id="id" name="id" placeholder="아이디를 입력하세요"></div>
					<div id="checkId"></div>
				</div>
				
				<div class="joinRow">
					<div><label for="pw">비밀번호</label></div>
					<div class="list-group-item"><input type="text" class="login" id="pw" name="pw" placeholder="비밀번호를 입력하세요"></div>
				</div>
				
				<div class="joinRow">
					<div><label for="pw">비밀번호확인</label></div>
					<div class="list-group-item"><input type="text" class="login" id="pwCheck" placeholder="비밀번호를 한번더 입력하세요"></div>
					<div id="checkPw"></div>
				</div>
				
				<div class="joinRow">
					<div><label for="name">이름</label></div>
					<div class="list-group-item"><input type="text" class="login" id="name" name="name" placeholder="이름을 입력하세요"></div>
				</div>
				
				<div class="joinRow">
					<div><label for="address">주소</label></div>
					<div class="list-group-item"><input type="text" class="login" id="address" name="address" placeholder="주소를 입력하세요"></div>
				</div>
				
				<div class="joinRow">
					<div><label for="phone">핸드폰번호</label></div>
					<div class="list-group-item"><input type="text" class="login" id="phone" name="phone" placeholder="핸드폰 번호를 입력하세요"></div>
				</div>
				
			</form>
			<div class="joinRow">
				<input type="button" id="joinbtn" value="가입하기">
			</div>
		</div>
	</div>
	<c:import url="../template/footer.jsp"></c:import>
	<script type="text/javascript">
		var chId = 0;
		var chPw = 0;
	
		$("#id").blur(function(){
			var id = $("#id").val();
			if(id != ''){
				$.post("./memberIdCheck",{id : id},function(data) {
					$("#checkId").html(data);
					var check = $("#idCheckContent").html();
					if(check=='중복된 아이디입니다'){
						$('#idCheckContent').css('color','red');
						chId = 0;
					}else{
						$('#idCheckContent').css('color','blue');
						chId = 1;
					}
				});
			}else{
				$("#checkId").html("<h3 id='idCheckContent'>아이디를 입력하세요</h3>");
				$('#idCheckContent').css('color','red');
				chId = 0;
			}
		});

		$("#pwCheck").blur(function(){
			var pw1 = $("#pw").val();
			var pw2 = $("#pwCheck").val();
			if(pw1 == pw2 && pw2 != 0){
				$("#checkPw").html("<h3 style='color:blue' id='pwCheckContent'>비밀번호가 일치합니다</h3>")
				chPw = 1;
			}else{
				$("#checkPw").html("<h3 style='color:red' id='pwCheckContent'>비밀번호가 일치하지 않습니다</h3>")
				chPw = 0;
			}
		})
		
		$("#joinbtn").click(function(){
			var id = $("#id").val();
			var pw = $("#pw").val();
			var pw2 = $("#pwCheck").val();
			var name = $("#name").val();
			var address = $("#address").val();
			var phone = $("#phone").val();
			if(id == ''){
				alert("아이디를 입력하세요");
			}else if(chId == 0){
				alert("아이디를 확인하세요");
			}else if(pw == ''){
				alert("비밀번호를 입력하세요");
			}else if(pw2 ==0){
				alert("비밀번호가 다릅니다");
			}else if(name == ''){
				alert("이름을 입력하세요");
			}else if(address == ''){
				alert("주소를 입력하세요");
			}else if(phone == ''){
				alert("핸드폰을 입력하세요");
			}else{
				$("#frm").submit();
			}
		});
		
	</script>
</body>
</html>