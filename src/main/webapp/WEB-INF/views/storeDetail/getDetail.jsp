<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
.sdContainer {
	width: 1090px;
	height: auto;
	margin: 15px auto;
}

.category-menu {
	background-color: #fff;
	position: relative;
	border-left: none;
	margin-top: 0;
	margin-right: 0;
	box-shadow: 2px 2px 3px 0px rgba(0, 0, 0, 0.25);
}

.category-menu ul {
	max-width: 1090px;
	min-width: 1000px;
	margin: 0 auto;
	border-top: 1px solid #d9d9d9;
	position: relative;
	padding-left: 0;
}

.category-menu ul a {
	color: black;
}

.category-menu li:hover, .category-menu li:focus, .category-menu li.active
	{
	background-image: none;
	background-color: #333;
	color: #fff;
}

.category-menu li {
	float: left;
	font-size: 13px;
	text-align: center;
	list-style: none;
	border-right: 0;
	border-bottom: 0;
	padding: 20px 0;
	background: url(../images/sprite-icon.png) no-repeat -999px 20px;
	width: 90px;
}

.sdDiv1 {
	width: 660px;
	height: auto;
	display: inline-block;
}

.sdBanner {
	float: right;
	width: 400px;
	height: auto;
}

.sdBanner>#chase {
	width: 400px;
	height: auto;
}

.sdHeader {
	width: 660px;
	height: 200px;
	border: 1px solid #DCDCDC;
}

.sdHeaderDiv1 {
	width: 660px;
	height: 45px;
	font-size: 22px;
	text-align: center;
	line-height: 40px;
}

.sdHeaderDiv2 {
	width: 660px;
	height: 110px;
	border-bottom: 1px solid #DCDCDC;
	border-top: 1px solid #DCDCDC;
}

.sdHeaderDiv2>img {
	float: left;
	width: 90px;
	height: 90px;
	margin-top: 10px;
	margin-left: 10px;
	border: 1px solid #DCDCDC;
}

#sdHeaderDiv3 {
	width: 660px;
	height: 45px;
	cursor: pointer;
}

#sdHeaderDiv3>img {
	float: left;
	width: 30px;
	height: 30px;
	margin-top: 7px;
	margin-left: 10px;
}

.sdHeaderDiv2Div {
	width: 400px;
	height: 90px;
	display: inline-block;
	margin-top: 10px;
	margin-left: 10px;
}

.sdHeaderDiv2Div>ul {
	list-style: none;
	-webkit-padding-start: 0px;
	color: #A9A9A9;
}

.sdBottom {
	width: 660px;
	height: 2000px;
	margin-top: 15px;
}

.sdBtnDiv {
	width: 660px;
	height: 47px;
}

.sdBtnCss {
	float: left;
	width: 220px;
	height: 47px;
	border: 1px solid #DCDCDC;
	background-color: white;
	text-align: center;
	line-height: 47px;
	font-size: 17px;
}

.sdBtnCss:hover {
	background: #F5F5F5;
	color: #fa0050;
}

.sdA:active, .sdBtnClicked {
	background: #F5F5F5;
	color: #fa0050;
	font-weight: bold;
}

.sdBtnConDiv {
	width: 660px;
	height: 1000px;
	background-color: lime;
}

.iaDiv1 {
	width: 640px;
	height: auto;
	margin: 15px auto 50px;
}

.d1 {
	width: 640px;
	height: auto;
	margin: 15px auto;
	border-bottom: 1px solid #DCDCDC;
	font-size: 19px;
	font-weight: bold;
}

.d2 {
	width: 640px;
	height: auto;
	margin: 15px auto;
	font-size: 16px;
}

.d1>img {
	width: 20px;
	height: 20px;
	margin-bottom: 3px;
}

.d2d1 {
	float: left;
	width: 120px;
	height: auto;
	color: #A9A9A9;
}

.maDiv {
	width: 660px;
	height: 215px;
}

.maDiv>ul {
	white-space: nowrap;
	overflow-x: auto;
	list-style: none;
	text-align: center;
	-webkit-padding-start: 0px;
}

.maDiv>ul>li {
	width: 138px;
	height: 164px;
	margin-top: 15px;
	display: inline-block;
	margin-right: 5px;
	margin-bottom: 10px;
	border: 1px solid #DCDCDC;
}

.maDiv>ul>li>img {
	width: 136px;
	height: 98px;
}

.maDivdiv1 {
	height: 138px;
	height: 33px;
	text-align: center;
	line-height: 33px;
	font-size: 15px;
	font-weight: bold;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

.maDivdiv2 {
	height: 138px;
	height: 33px;
	text-align: center;
	line-height: 33px;
}

.maDDD {
	width: 660px;
	height: auto;
}

.maDiv2 {
	width: 660px;
	height: auto;
	cursor: pointer;
}

.maDiv2d {
	width: 660px;
	height: 48px;
	background-color: #F5F5F5;
	border: 1px solid #DCDCDC;
	font-size: 15px;
	line-height: 48px;
	font-weight: bolder;
}

.amd {
	float: right;
	height: 40px;
	width: 30px;
	color: #A9A9A9;
	font-size: 20px;
}

.maDiv2dd {
	width: 660px;
	height: auto;
	display: none;
}

.maDiv2dd>ul {
	list-style: none;
	-webkit-padding-start: 0px;
}

.maDiv2dd>ul>li {
	width: 660px;
	height: 110px;
	padding: 12px 10px 12px 15px;
	border-bottom: 1px solid #DCDCDC;
}

.liDiv {
	width: 510px;
	height: 90px;
	float: left;
}

.divName {
	width: 510px;
	height: 26px;
	font-size: 16px;
	font-weight: bold;
}

.divDes {
	width: 510px;
	height: 38px;
	font-size: 13px;
	color: #A9A9A9;
}

.divPrice {
	width: 510px;
	height: 24px;
	font-size: 15x;
}

.maDiv2dd>ul>li>img {
	height: 80px;
	width: 112px;
	margin-left: 10px;
}
.bgLayer {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 10;
	overflow: none;
}

.screen {
	height: 60px;
	text-align: center;
	line-height: 60px;
	font-size: 20px;
}

.md1 {
	width: 100%;
	height: auto;
}

.md1>img {
	width: 30%;
	height: 100px;
	margin: 3% 35%;
}

.md1d {
	width: 100%;
	height: auto;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	line-height: 60px;
}

.modal--close {
	float: right;
	width: 60px;
	height: 60px;
	text-align: center;
	background-color: white;
	font-size: 36px;
}

.md1d2 {
	width: 100%;
	height: 40px;
	font-size: 15px;
	text-align: center;
	color: #A9A9A9;
}

.md2 {
	width: 100%;
	height: 40px;
	border-top: 1px solid #DCDCDC;
	
}
.md3{
	width: 100%;
	height: auto;
	border-top: 1px solid #DCDCDC;
}

.md3d1{
	width: 100%;
	height: 30px;
	margin-top: 6px;
}

.md4{
	width: 100%;
	height: auto;
	border-top: 1px solid #DCDCDC;
}
.md5{
	width: 100%;
	height: auto;
	border-top: 1px solid #DCDCDC;
}
.raCon{
	width: 660px;
	height: auto;
}
.radiv1{
	width: 660px;
	height: 100px;
	border-bottom: 1px solid #DCDCDC;
}
.radiv2{
	width: 660px;
	height: 70px;
	font-size: 45px;
	line-height: 50px;
	text-align: center;
	font-weight: bold;
	line-height: 70px;
}
.radiv3{
	width: 660px;
	height: 20px;
	font-size : 15px;
	text-align: center;
}
.radiv4{
	width: 660px;
	height: 500px;
	margin-top: 10px;
}
.radiv5{
	width: 660px;
	height: 55px;
	border-bottom: 1px solid #DCDCDC;
	line-height: 55px;
	color: #696969;
}

.raCheckDiv{
	width: 130px;
	height: 55px;
	float: right;
	color: #696969;
}
.raRevDiv{
	width: 660px;
	height: auto;
	border-bottom: 1px solid #DCDCDC;
	
}
.raRevDiv1{
	width: 660px;
	height: 30px;
	margin-top : 20px;
}
.raRevDiv2{
	width: 660px;
	height: 30px;
}
.raRevDiv3{
	width: 660px;
	height: auto;
}
.raRevDiv4{
	width: 660px;
	height: auto;
	margin-top:10px;
	color: #DEB887;
}
.raRevDiv5{
	width: 660px;
	height: auto;
	margin-top : 10px;
	color: #696969;
	margin-bottom: 15px;
}
.raReplyDiv{
	width: 600px;
	height: 100px;
	margin: 0 auto;
	background-color: #FAF0E6;
	border-radius: 5px;
	margin-bottom: 15px;
	padding: 10px;
}

   .col-sm-41{
        width: 100%;
        height: auto;
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
     .panel-heading {
       padding: 10px 15px;
       border-color: #ddd;
       color: #333;
       background-color: #e6e6e6;
       border-radius: 0;
       height: 39px;
       text-align: left;
    }
    .panel-default {
       border-color: #ddd;
       background-color: #fff;
       border: 1px solid transparent;
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

<script type="text/javascript">
	$(document).ready(function(){
		$("#menuBtn").trigger("click");
	});
	
	$(window).scroll(function(event) {
		if (jQuery(window).scrollTop() > jQuery(".sdBanner").offset().top) {
			jQuery("#chase").css("position", "fixed");
		} else if ((jQuery(window).scrollTop() < jQuery(".sdBanner").offset().top)) {
			jQuery("#chase").css("position", "static");
		}
	});
		
</script>

</head>
<body>

	<c:import url="../template/header.jsp"></c:import>
	<div id="category" class="category-menu clearfix collapse in"
			aria-expanded="true">
			<ul>
				<a href="#">
					<li><span class="category-name ng-binding">전체보기</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">프랜차이즈</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">치킨</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">피자/양식</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">중국집</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">한식</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">일식/돈까스</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">족발/보쌈</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">분식</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">카페/디저트</span></li>
				</a>
				<a href="#">
					<li><span class="category-name ng-binding">편의점/마트</span></li>
				</a>
			</ul>
		</div>

	<div class="sdContainer">
		<div class="sdDiv1"> 
			<div class="sdHeader">
				<div class="sdHeaderDiv1">
					${vo.storeName}
				</div>
				<div class="sdHeaderDiv2">
					<c:choose>
						<c:when test="${vo.storeThumbFileVO.fileName ne null}">
							<img src="../upload/${vo.storeThumbFileVO.fileName}">
						</c:when>
						<c:otherwise>
							<img>
						</c:otherwise>
					</c:choose>
					<div class="sdHeaderDiv2Div">
						<ul>
							<li>별점 
							<c:if test="${avg ne 0}">
								<c:forEach begin="1" end="5" var="i">
									<c:choose>
										<c:when test="${avg ge i}">
											<span style="color:orange;">★</span>
										</c:when>
										<c:otherwise><span style="color:#DCDCDC;">★</span></c:otherwise>
									</c:choose>
								</c:forEach>
								<span style="color: black;">  ${avg}</span>
							</c:if>
							</li>
							<li>최소주문금액 <span style="color: black;">  ${vo.storeManageVO.minPrice}원</span></li>
							<li>배달비 <span style="color: black;">  ${vo.storeManageVO.driveFee}원</span></li>
							<li>배달소요시간 <span style="color: black;">  약 ${vo.storeManageVO.takeTime}분</span></li>
						</ul>
					</div>
				</div>
				<div id="sdHeaderDiv3" class="sdBtn"  onclick="getInfo();">
					<img src="../images/sdComment.PNG">
					<div style="width:80px; height:45px; line-height:45px; float:left; margin-left: 4px; font-weight: bold;">사장님 알림</div>
				
					<div style="width:510px; height:45px; line-height:45px; display: inline-block; margin-left: 10px;text-overflow: ellipsis; white-space:nowrap; overflow: hidden;">
						${vo.storeManageVO.storeComment}
					</div>
					
				</div>
			</div>
			
			
			<div class="sdBottom">
				<div class="sdBtnDiv">
					<a style="color: black;" class="sdA" id="menuBtn" onclick="getMenu();"><div class="sdBtn sdBtnCss">메뉴</div></a>
					<a style="color: black;" class="sdA" id="rvBtn"><div class="sdBtn sdBtnCss">리뷰</div></a>
					<a style="color: black;" class="sdA" id="infoBtn"><div class="sdBtn sdBtnCss" onclick="getInfo();">정보</div></a>
				</div>
				
				<div id="sdBtnConDiv">
				</div>
			</div>
		</div>
	
		<div class="sdBanner">
			<div id="chase" style="top:0px;">

				<div class="col-sm-41">
					<div class="order-list">
						<div class="panel-default">
							<div class="panel-heading">
								<span class="menu-name pull-left">주문내역</span>
							</div>
							<div class="restaurant_name">돈암동찌개</div>
							<input type="hidden" name="restaurant_name" value="2">

							<ul style="padding-left: 15px; padding-right: 15px;"
								class="item-list">
								<li class="listgroupitem1">
									<div class="order-item clearfix">
										<div class="order-name">
											<span class="ng-binding">치킨풀팩-콘샐러드: 데리야끼소스</span> <input
												type="hidden" name="productName" value="치킨풀팩-콘샐러드: 데리야끼소스">
											x <span class="ng-binding">1</span>개 <input type="hidden"
												name="productCount" value="1">
										</div>
										<div class="order-price">19,900원</div>
									</div>
								</li>
							</ul>
							<div class="total-order-price">
								<div class="order-item clearfix">
									<div style="color: #fa0050; font-size: 14px; font-weight: bold"
										class="order-name">
										<span class="ng-binding">총 결제 금액</span>
									</div>
									<div style="color: #fa0050; font-size: 14px; font-weight: bold"
										class="order-price">72000원</div>
									<input type="hidden" name="totalPrice" value="0">

								</div>
							</div>

						</div>

						<button class="btn-ygy1">결제하기</button>
					</div>
				</div>

			</div>
		</div>
	
	</div>

	<c:import url="../template/footer.jsp"></c:import>
	
	<script type="text/javascript">
		$('.sdBtn').each(function(index){
			$(this).attr('menu-index', index);
		}).click(function(){
			var index = $(this).attr('menu-index');

			if(index==0){
				index=3;
			}
			$('.sdBtn[menu-index=' + index + ']').addClass('sdBtnClicked');
			$('.sdBtn[menu-index!=' + index + ']').removeClass('sdBtnClicked');
		});
	
		//메뉴
		function getMenu(){
			$.ajax({
				method:"GET",
				url:"./getMenuAjax",
				data:{num:${vo.storeManageVO.storeNum}},
				success:function(data){
					$("#sdBtnConDiv").html(data);	
				}
			});	
		}
		
		//리뷰
		$("#rvBtn").click(function(){
			$.ajax({
				method:"GET",
				url:"./getReviewAjax",
				data:{num:${vo.storeManageVO.storeNum}},
				success:function(data){
					$("#sdBtnConDiv").html(data);	
				}
			});	
			
		});

		//정보 -> 제어해야하기때문에 함수로
		function getInfo(){
			
				$.ajax({
						method:"GET",
						url:"./getInfoAjax",
						data:{num:${vo.storeManageVO.storeNum}},
						success:function(data){
							
							$("#sdBtnConDiv").html(data);		
						}
					}		
				);

		}
		
	</script>
</body>
</html>