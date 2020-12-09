<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootstrap.jsp"></c:import>
<style type="text/css">
.sdContainer {
	width: 1090px;
	height: 3000px;
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

.sdDiv1{
	width : 660px;
	height: 2000px;
	background-color: yellow;
	display: inline-block;
}
.sdBanner{
	float : right;
	width: 400px;
	height: 2000px;
	background-color: orange;
	margin-left: 15px;
}

.sdBanner > #chase{
	width: 400px;
	height: 300px;
	background-color: fuchsia;
}
.sdHeader{
	width: 660px;
	height: 200px;
	background-color: yellow;
	border: 1px solid #DCDCDC;
}
.sdHeaderDiv1{
	width: 660px;
	height: 45px;
	font-size: 22px;
	text-align: center;
	font-weight: bold;
	line-height: 45px;

}
.sdHeaderDiv2{
	width: 660px;
	height: 110px;
	border-bottom: 1px solid #DCDCDC;
	border-top: 1px solid #DCDCDC;
}
.sdHeaderDiv2 > img{
	float: left;
	width: 90px;
	height: 90px;
	background-color: fuchsia;
	margin-top: 10px;
	margin-left: 10px;
}
.sdHeaderDiv3{
	width: 660px;
	height: 45px;
}
.sdHeaderDiv2Div{
	width: 400px;
	height: 90px;
	display: inline-block;
	margin-top: 10px;
	margin-left: 10px;
	
}
.sdHeaderDiv2Div > ul{
	list-style: none;
	background-color: aqua;
	-webkit-padding-start : 0px;
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
					<img src="#">
					<div class="sdHeaderDiv2Div">
						<ul>
							<li>별점</li>
							<li>최소주문금액</li>
							<li>배달비</li>
							<li>배달소요시간</li>
						</ul>
					</div>
				</div>
				<div class="sdHeaderDiv3"></div>
			</div>
		</div>
	
		<div class="sdBanner">
			<div id="chase" style="top:0px;">
				...
			</div>
		</div>
	
	</div>

	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>