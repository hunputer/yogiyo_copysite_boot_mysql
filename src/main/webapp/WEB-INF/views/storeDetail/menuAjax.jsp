<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="maDiv">
	<ul>
	<c:forEach items="${list}" var="ar">
		<li>
			<img src="../images/sdComment.PNG">
			<div class="maDivdiv1">${ar.menuName}</div>
			<div class="maDivdiv2">${ar.menuPrice}원</div>
		</li>
	</c:forEach>
	</ul>
</div>

<div class="maDiv2">
<c:forEach items="${cg}" var="cg">
	<div class="maDDD">	
		<div class="maDiv2d">　${cg}
			<div class="amd">∨</div>
		</div>
		
		<div class="maDiv2dd">
			<ul>
				<c:forEach items="${list}" var="m">
					<li>${m.menuName}</li>
				</c:forEach>
			</ul>
		</div>
		
	</div>
</c:forEach>	
</div>

	<script>
		var a = document.getElementsByClassName("maDiv2dd");
		var b = document.getElementsByClassName("amd");
		$(".maDiv2d").each(function(index){
			$(this).click(function(){
				if($(a[index]).css("display")=="none"){
					$(a[index]).css("display","block");
					$(b[index]).html("∧");
				}else{
					$(a[index]).css("display","none");
					$(b[index]).html("∨");
				}
			});
		});
	</script>