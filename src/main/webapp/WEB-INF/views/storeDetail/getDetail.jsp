<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<script src="https://code.jquery.com/jquery-latest.js"></script>

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
	background-color: orange;
	margin-left: 15px;
}

.sdBanner>#chase {
	width: 400px;
	height: 300px;
	background-color: fuchsia;
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
	-webkit-padding-start: 15px;
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

.modal {
	width: 30%;
	height: 600px;
	background-color: aqua;
	border: 1px solid #DCDCDC;
	margin-left: 35%; /* half of width */
	margin-top: 8%; /* half of height */
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
}
.md1{
	width: 100%;
	height: 60px;
	background-color: gray;
}
</style>

<script type="text/javascript">
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
							<li>별점</li>
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
					<a style="color: black;" class="sdA" id="menuBtn"><div class="sdBtn sdBtnCss">메뉴</div></a>
					<a style="color: black;" class="sdA" id="rvBtn"><div class="sdBtn sdBtnCss">리뷰</div></a>
					<a style="color: black;" class="sdA" id="infoBtn"><div class="sdBtn sdBtnCss" onclick="getInfo();">정보</div></a>
				</div>
				
				<div id="sdBtnConDiv">
				</div>
			</div>
		</div>
	
		<div class="sdBanner">
			<div id="chase" style="top:0px;">
				...
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
		$("#menuBtn").click(function(){
			$.ajax({
				method:"GET",
				url:"./getMenuAjax",
				data:{num:${vo.storeManageVO.storeNum}},
				success:function(data){
					$("#sdBtnConDiv").html(data);	
				}
			});		
		});

		//리뷰
		$("#rvBtn").click(function(){
			$("#sdBtnConDiv").html("");
		
			
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