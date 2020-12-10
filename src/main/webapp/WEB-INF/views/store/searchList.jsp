<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${list}" var="vo" varStatus="i">
	<div style="width: 35%;float: left;margin: 5px 20px;">
		 <span style="font-weight: bold; margin-right: 20px;">${i.count}</span>
		 <span>${vo.searchName}</span>
    </div>
</c:forEach>