<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="maDiv">
	<ul>
	<c:forEach items="${list}" var="ar">
		<li>
			<c:choose>
				<c:when test="${ar.storeMenuFileVO.oriName ne null}">
					<img src="../upload/${ar.storeMenuFileVO.oriName}">
				</c:when>
				<c:otherwise>
					<img>
				</c:otherwise>
			</c:choose>
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
					<c:if test="${m.menuCategory eq cg}">
							
						<li class="modal--open">
							<div class="liDiv">
								<div class="divName">
									${m.menuName}
								</div>
								<div class="divDes">${m.description}</div>
								<div class="divPrice">${m.menuPrice}원</div>
							</div>
							<c:if test="${m.storeMenuFileVO.oriName ne null}">
								<img src="../upload/${m.storeMenuFileVO.oriName}">
							</c:if>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		
	</div>
</c:forEach>	
</div>


<div class="modal">
  <div class="screen">
    <div class="layerpop">
      <p class="layerpop__container">
      레이어팝업입니다
      </p>
      <button type="button" value="close" class="btn modal--close">Close</button>
    </div>
  </div>
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

		function bgLayerOpen() {
		    if(!$('.bgLayer').length) {
		        $('<div class="bgLayer"></div>').appendTo($('body'));
		    }
		    var object = $(".bgLayer");
		    var w = $(document).width()+12;
		    var h = $(document).height();

		    object.css({'width':w,'height':h}); 
		    object.fadeIn(500);   //생성되는 시간 설정
		}
		
		function bgLayerClear(){
		    var object = $('.bgLayer');

		if(object.length) {
		    object.fadeOut(500, function() {
		    object.remove();
		});
		    }
		}

		
		$modal = $(".modal");

		$(".modal--open").click(function() {
			$modal.show();
			bgLayerOpen();
			return false;
		});
		$(".modal--close").click(function() {
			$modal.hide();
			bgLayerClear();
		});
	</script>