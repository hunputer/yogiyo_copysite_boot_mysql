<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="raCon">
	<div class="radiv1">
		<div class="radiv2">${avg}</div>
		<div class="radiv3">
				<c:forEach begin="1" end="5" var="i">
					<c:choose>
						<c:when test="${avg ge i}">
							<span style="color: orange;">★</span>
						</c:when>
						<c:otherwise>
							<span style="color: #DCDCDC;">★</span>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		</div>
	</div>
	
	<div class="radiv4">
		<div class="radiv5">
			　리뷰 <span style="color:black;font-weight: bold;">${sum}</span>개
			<div class="raCheckDiv">사진리뷰만 보기
				<input type="checkbox" value="0">
			</div>
		</div>

		<c:forEach items="${ar}" var="ar">
			<div class="raRevDiv">
				<div class="raRevDiv1">
					<span style="font-size: 17px;font-weight: bold;">${ar.id}님</span> 
					<span style="color: #A9A9A9; font-size: 13px;">　${ar.regDate}</span>
				</div>
				<div class="raRevDiv2">
					<c:forEach begin="1" end="5" var="i">
						<c:choose>
							<c:when test="${ar.starCount ge i}">
								<span style="color: orange;">★</span>
							</c:when>
							<c:otherwise>
								<span style="color: #DCDCDC;">★</span>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				<div class="raRevDiv3">
					<c:choose>
						<c:when test="${ar.reviewFileVO.oriName ne null}">
							<img src="../upload/${ar.reviewFileVO.oriName}">
						</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</div>
				<div class="raRevDiv4">${ar.orderListVO.orderContents}</div>
				<div class="raRevDiv5">${ar.contents}</div>
				
				<c:forEach items="${arAply}" var="arAply">
					<c:if test="${arAply.reviewNum eq ar.num}">
						<div class="raReplyDiv">
							<span style="color: gray; font-weight: bold;"> └</span> <span
								style="font-size: 18px; font-weight: bold;">사장님</span> <span
								style="color: #DCDCDC">${arAply.regDate}</span>
							<div style="margin-top: 10px;">${arAply.contents}</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
</div>