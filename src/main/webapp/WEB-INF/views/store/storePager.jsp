<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${list}" var="vo">
  <div class="col-sm-6">
 	<div class="item">
		<div class="logo1">		
		</div>
	<div class="restaurant-name">
      ${vo.storeName}
	</div>
	<div class="restaurant-info">
		<span class="restaurant-star">★ 4.3</span> | 리뷰 618 | ${vo.storeManageVO.minPrice}원 이상 배달
	</div>
	<div class="restaurant-time">
		${vo.storeManageVO.takeTime}분 예상
	</div>
	</div>
	</div>
</c:forEach>