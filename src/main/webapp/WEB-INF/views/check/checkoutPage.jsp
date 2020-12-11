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
	
	.col-sm-8 {
    	padding: 20px 10px 30px 10px;
	}
	
	.sub-title {
	    background-color: #333;
	    color: #fff;
	    font-size: 110%;
	    padding: 10px 10px 10px 15px;
	}
	
	.panel-default {
    	border-color: #ddd;
    	background-color: #fff;
    	border: 1px solid transparent;
	}
	
	.panel-heading {
    	padding: 10px 15px;
    	border-color: #ddd;
    	color: #333;
    	background-color: #e6e6e6;
    	border-radius: 0;
    	height: 39px;
    	text-align: left;
    }
    
    .panel-body {
    	padding: 15px;
    	height: 200px;
    	background-color: #fff;
	}
	
	.panel-body2 {
    	padding: 15px;
    	height: 130px;
    	background-color: #fff;
	}
	
	.control-label {
    	padding-top: 7px;
    	margin-bottom: 60px;
    	text-align: right;
    	width: 16.66666667%;
    	font-weight: bold;
    	float: left;
	}
	
	.col-sm-10{
		display : inline-block;
		float: left;
		margin-bottom: 10px;
	}
	
	.form-control {
	    display: block;
	    width: 100%;
	    height: 34px;
	    padding: 6px 12px;
	    font-size: 14px;
	    line-height: 1.42857143;
	    color: #555;
    }
    
    .col-sm-9{
    	position: relative;
    	display : block;
   	 	min-height: 1px;
    	padding-right: 15px;
    	padding-left: 15px;
    	float : right;
    	margin-bottom: 10px;
    	width: 83.33333333%;
    }
    
    .col-sm-4{
    	position: relative !important;
    	top: 0 !important;
 	    width: 33.33333333%;
    }
    
    .order-list {
    	margin: 20px 0 0 10px;
	}
	
	.restaurant_name{
		position: relative;
  	  	display: block;
    	padding: 10px 15px;
    	background-color: #fff;
    	margin-bottom: 1px;
	}
	
	.item-list{
	    border-radius: 0;
	    margin-bottom: 0;
	    background-color: #fff8eb;
	    padding-top: 10px;
	   
	}
	
	.listgroupitem1 {
	    background-color: #fff8eb;
	    padding-top: 0;
	    padding-bottom: 0;
	    border: none;
	     list-style: none;
	}
	
	.order-price{
		display:inline-block;
		width: 25%;
		text-align: right;
		height: 30px;
		
	}
	
	.order-name{
		display:inline-block;
		width: 70%;
	}
	
	.total-order-price {
	    padding: 15px;
	    border-top: 1px dotted #d9d9d9;
	    padding-top: 10px;
	    background-color: #fff8eb;
	}
	
	.btn-ygy1 {
    	margin-top: 16px;
    	color: #fff;
    	background-color: #fa0050;
    	border-color: #fa0050;
    	border-radius: 0;
    	min-width: 100px;
    	display: block;
   	 	width: 100%;
   	 	padding: 10px 16px;
    	font-size: 18px;
    	line-height: 1.3333333;
    	border: none;
	}
	
</style>
</head>
<body>
	<c:import url="../template/header_notSearch.jsp"></c:import>
	<div class="container">	
		<div class="col-sm-8">
			<div class="sub-title">
				<span>결제하기</span>
			</div>
			<div class="panel-default">
				<div class="panel-heading">
                	<span class="menu-name pull-left">배달정보</span>
				</div>
				<div class="panel-body">
					<div class="control-label">
						주소
					</div>
					<div class="col-sm-10">
                    	<input type="text" class="form-control address1" placeholder="배달 주소" id="address" name="address" value="${member.address}" readonly="readonly">
                  	</div>
	                <div class="col-sm-9">
	                  	<input type="text" class="form-control detailaddress" placeholder="상세주소 입력" id="detailAddress" name="detailAddress">
	                </div>
	                <div class="control-label">
						휴대전화번호
					</div>
					<div class="col-sm-9">
	                  	<input type="text" class="form-control detailaddress" placeholder="(필수)휴대전화 번호 입력" name="phone">
	                </div>
				</div>
			</div>
			
			<div class="panel-default">
				<div class="panel-heading">
                	<span class="menu-name pull-left">주문시 요청사항</span>
				</div>
				<div class="panel-body2">
					<textarea class="form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength" rows="3" name="comment" maxlength="100" placeholder="코로나19 예방을 위해 비대면 배달 권장드립니다. 요기서 결제 선택 후, &quot;문 앞 배달&quot;을 요청사항에 남겨주세요."></textarea>
				</div>
			</div>
		</div>
		
		<div class="col-sm-4">
			<div class="order-list">
				<div class="panel-default">
					<div class="panel-heading">
	                	<span class="menu-name pull-left">주문내역</span>
					</div>
					<div class="restaurant_name">롯데리아-숙대입구역점</div>
					
					<ul style="padding-left: 15px;padding-right: 15px;" class="item-list">
						<li class="listgroupitem1">
                			<div class="order-item clearfix">
	                  			<div class="order-name">
		                    		<span class="ng-binding">치킨풀팩-콘샐러드: 데리야끼소스, 데리야끼소스</span>
		                    			x
		                    		<span class="ng-binding">1</span>개
	                  			</div>
	                  			 <div class="order-price">19,900원</div>
		                	</div>
		              	</li>
					</ul>
					<div class="total-order-price">
						<div class="order-item clearfix">
	                  			<div style="color: #fa0050; font-size: 14px; font-weight: bold" class="order-name">
		                    		<span class="ng-binding">총 결제 금액</span>
	                  			</div>
	                  			<div style="color: #fa0050;font-size: 14px;font-weight: bold" class="order-price">72000원</div>
		                </div>
					</div>
					
				</div>
				
				<button class="btn-ygy1">결제하기</button>
			</div>
		</div>
		
		
		
	</div>
	<c:import url="../template/footer.jsp"></c:import>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		$("#address").click(function(){
			execDaumPostcode();
		})
	
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
	                document.getElementById("address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
</body>
</html>