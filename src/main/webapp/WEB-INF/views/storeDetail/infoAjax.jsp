<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="iaDiv1">
	<div class="d1">
		<img src="../images/sdComment.PNG"> 사장님알림
	</div>
	<div class="d2">
		${vo.storeManageVO.storeComment}
	</div>
</div>

<div class="iaDiv1">
	<div class="d1">
		<img src="../images/storeInfo.PNG"> 업체정보
	</div>
	<div class="d2">
		<div class="d2d1">
			<p>영업시간</p>
			<p>전화번호</p>
			<p>주소</p>
		</div>
		<p>${vo.storeManageVO.openTime} ~ ${vo.storeManageVO.closeTime}</p>
		<p>${vo.tel}</p>
		<p>${vo.address}</p>
	</div>
</div>


<div class="iaDiv1">
	<div class="d1">
		<img src="../images/storeInfo.PNG"> 결제정보
	</div>
	<div class="d2">
		<div class="d2d1">
			<p>최소주문금액</p>
			<p>결제수단</p>
			<p>배달비</p>
		</div>
		<p>${vo.storeManageVO.minPrice}원</p>
		<p>신용카드 결제, 만나서 결제</p>
		<p>${vo.storeManageVO.driveFee}원</p>
	</div>
</div>


<div class="iaDiv1">
	<div class="d1">
		<img src="../images/storeInfo.PNG"> 사업자정보
	</div>
	<div class="d2">
		<div class="d2d1">
			<p>상호명</p>
			<p>사업자등록번호</p>
		</div>
		<p>${vo.storeName}</p>
		<p>${vo.storeNumber}</p>
	</div>
</div>


<div class="iaDiv1">
	<div class="d1">
		<img src="../images/storeInfo.PNG"> 원산지정보
	</div>
</div>