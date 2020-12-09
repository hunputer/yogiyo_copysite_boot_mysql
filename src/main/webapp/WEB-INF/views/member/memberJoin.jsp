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
					<div class="list-group-item"><input type="text" class="login" id="address" name="address" placeholder="주소를 입력하세요" onclick="execDaumPostcode()"></div>
					<div class="list-group-item"><input type="text" class="login" id="detailAddress" name="detailAddress" placeholder="상세주소를 입력하세요"></div>
				</div>
				
				<div class="joinRow">
					<div><label for="phone">핸드폰번호</label></div>
					<div class="list-group-item"><input type="text" class="login" id="phone" name="phone" placeholder="핸드폰 번호를 입력하세요"></div>
				</div>
				
				<input type="hidden" name="zipCode" id="zipCode">
				
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
	
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    addr = addr + extraAddr;
                
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipCode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
</script>
	
</body>
</html>