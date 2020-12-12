<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	footer{
		margin-top: 30px;
		border-top : 1px solid #D9D9D9;
	}
	
	p {
    	margin: 0 0 10px;
	}
	
	.company-wrap {
	    position: relative;
	    max-width: 1020px;
	    min-width: 750px;
	    margin: 32px auto 0 auto;
	    padding-left: 20px;
	}
	
	.company-logo {
	    position: absolute;
	    top: 0;
	    left: 20px;
	}
	
	.company-logo a {
	    display: block;
	    background: url(${pageContext.request.contextPath}/images/img-footer1.png) no-repeat;
	    width: 70px;
	    height: 29px;
	    text-indent: -999em;
	    overflow: hidden;
	}
	
	.company-info {
	    display: inline-block;
	    color: #4D4D4D;
	    line-height: 1.6;
	    padding-left: 118px;
	}
	
	.company-info a{
		color: #818181;
	}
	
	.company-info .bar {
	    color: #D9D9D9;
	    display: inline-block;
	    vertical-align: middle;
	    content: " | ";
	    height: 100%;
	    padding: 0 5px;
	}
	
	.service-info {
	    max-width: 1020px;
	    padding-left: 138px;
	    margin: 30px auto;
	    overflow: auto;
	}
	
	.footer-menu {
	    background: #FBFBFB;
	    border-top: 1px solid #d9d9d9;
	    border-bottom: 1px solid #d9d9d9;
	}
	
	.footer-menu ul {
	    max-width: 1020px;
	    margin: 0 auto;
	    padding-left: 0;
		text-align: left;
		height: 45.23px;
		padding: 0 0 0 20px;
	}
	
	.mb {
   	 	display: inline-block;
    	float: none;
    	padding: 15px 0 13px 0;
    	color: #818181;
    	font-size: 12px;
	}
	
	.mb a{
		color: #818181;
		font-size: 12px;
	}
	
	
</style>
</head>
<body>
	<footer>
		<div class="footer-menu">
			<ul>
				<li class="mb"><a href="${pageContext.request.contextPath}/member/memberJoin">회원가입</a></li>
				<li class="mb"><span class="footerBar">|</span></li>
				<li class="mb"><a href="#">사장님페이지</a></li>
			</ul>
		</div>
		<div class="company-wrap">
			<div class="company-logo">
				<a href="${pageContext.request.contextPath}/">요기요</a>
			</div>
			<div class="company-info">
				<p>
					<strong>(유)딜리버리히어로 코리아</strong><br>
					서울시 서초구 서초대로38길 12 마제스타시티 타워2 17층<span class="bar">|</span>대표자 : 강신봉<span class="bar">|</span>사업자등록번호:211-88-68802 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2118868802" rel="noopener noreferrer" target="_blank" class="biz-info" ng-show="!is_mobile_device">사업자정보확인</a>통신판매업신고:제 2018-서울서초-2635호<span class="bar">|</span>개인정보담당자 : <a href="mailto:privacy@yogiyo.co.kr">privacy@yogiyo.co.kr</a><span class="bar">|</span>제휴문의 : <a href="mailto:partnership@deliveryhero.co.kr">partnership@deliveryhero.co.kr</a><span class="bar">|</span>고객만족센터 : <span ng-show="is_mobile_width" class="pnum">1661-5270 (24시간, 연중무휴)</span> <a href="mailto:support@yogiyo.co.kr">support@yogiyo.co.kr</a><span class="bar">|</span>호스팅 제공자: 카페24 주식회사
				</p>
			</div>
		</div>
		<div class="service-info">
		</div>
	</footer>
</body>
</html>