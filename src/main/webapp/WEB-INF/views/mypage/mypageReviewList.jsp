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
		padding: 100px 5px;
    	max-width: 700px;
    	margin: 0 auto;
	}
	
	.raRevDiv{
   	  width: 660px;
 	  height: auto;
  	  border-bottom: 1px solid #DCDCDC;
  	  border-top: 1px solid #DCDCDC;
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
		   margin: 0px auto;
		   background-color: #FAF0E6;
		   border-radius: 5px;
		   margin-bottom: 15px;
		   padding: 10px;
		}
</style>
</head>
<body>
	<c:import url="../template/header_mypage.jsp"></c:import>
	<div class="container">
	
	
	  <c:forEach items="${list}" var="ar">
         <div class="raRevDiv">
            <div class="raRevDiv1">
               <span style="font-size: 17px;font-weight: bold;">${ar.id}님</span> 
               <span style="color: #A9A9A9; font-size: 13px;">　${ar.regDate}</span>
               <a href="./setReviewDelete?num=${ar.num}"><span style="font-size: 13px;">리뷰삭제</span></a>
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
                  <c:when test="${ar.reviewFileVO.fileName ne null}">
                     <img src="${pageContext.request.contextPath}/upload/review/${ar.reviewFileVO.fileName}">
                  </c:when>
                  <c:otherwise></c:otherwise>
               </c:choose>
            </div>
            <div class="raRevDiv4">${ar.orderListVO.orderContents}</div>
            <div class="raRevDiv5">${ar.contents}</div>
            
            <c:if test="${ar.reviewAplyVO.replyContents ne null}">
                <div class="raReplyDiv">
                   <span style="color: gray; font-weight: bold;"> └</span> <span
                      style="font-size: 18px; font-weight: bold;">사장님</span> <span
                      style="color: #DCDCDC">${ar.reviewAplyVO.regDate}</span>
                   <div style="margin-top: 10px;">${ar.reviewAplyVO.replyContents}</div>
                </div>
            </c:if>
         </div>
      </c:forEach>
	
	
	</div>
	<c:import url="../template/footer.jsp"></c:import>
</body>
</html>