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
		</div>
	</div>
</div>