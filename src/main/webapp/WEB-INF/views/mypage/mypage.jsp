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
	
	.list-group-items2 {
	    position: relative;
	    display: block;
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
	<form action="./mypage/setUpdate" method="post">
   <div class="profile">
   	  <img alt="" src="${pageContext.request.contextPath}/images/m.top_icon01.png">
   </div>
   <div style="margin: 0 auto;width:350px;padding-left: 20px;">
	   <div class="list-group-items">
			<input type="text" id="name" name="name" class="idForm" value="${member.name}">
	   </div>
	   <div class="idBnt">
	   		<button class="idBntk">변경</button>
	   </div>
   </div>
   <div style="border-top : 1px solid #DCDCDC;margin-top: 20px;">
   	  <div style="margin: 10px auto;width:450px;padding-left: 20px">
	  		<div>
   	  			핸드폰
   	  		</div> 
		   <div class="list-group-items" style="width: 350px">
				<input type="text" id="phone" name="phone" class="idForm" value="${member.phone}">
		   </div>
		   <div class="idBnt">
		   		<button class="idBntk">변경</button>
		   </div>
	  </div>
	  
   	  <div style="margin: 10px auto;width:450px;padding-left: 20px">
   	  		<div>
   	  			주소
   	  		</div>
	   		<div class="list-group-items" style="width: 350px">
	   			<input type="hidden" id="zipCode" name="zipCode">
				<input type="text" id="address" name="address" class="idForm" value="${member.address}">
		    </div>
		    <br>
		    <div class="list-group-items" style="width: 350px">
				<input type="text" id="detailAddress" name="detailAddress" class="idForm" placeholder="상세주소">
		    </div>
		    <div class="idBnt">
		   		<button class="idBntk">변경</button>
		    </div>
	  </div>
   </div>
   </form>
</div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$("#address").click(function(){
		execDaumPostcode();
	});

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

<c:import url="../template/footer.jsp"></c:import>
</body>
</html>