<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="maDiv">
	<ul>
	<c:forEach items="${list}" var="ar" varStatus="vs">
		<li class="modal--open" title="modal${vs.count}">
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
				<c:forEach items="${list}" var="m" varStatus="vs">
						<c:if test="${m.menuCategory eq cg}">

							<li title="modal${cg}${vs.count}"  data-toggle="modal" data-target="#modal${cg}${vs.count}">
								<div class="liDiv">
									<div class="divName">${m.menuName}</div>
									<div class="divDes">${m.description}</div>
									<div class="divPrice">${m.menuPrice}원</div>
								</div> <c:if test="${m.storeMenuFileVO.oriName ne null}">
									<img src="../upload/${m.storeMenuFileVO.oriName}">
								</c:if>
							</li>


							<!-- The Modal -->
							<div class="modal" id="modal${cg}${vs.count}">
								<div class="modal-dialog modal-dialog-scrollable">
									<div class="modal-content">

										<!-- Modal Header -->
										<div class="modal-header"">
											<h4 class="modal-title">메뉴 상세</h4>
											<button type="button" class="close" data-dismiss="modal">×</button>
										</div>

										<!-- Modal body -->
										<div class="modal-body">
											<div class="md1">
												<c:choose>
													<c:when test="${m.storeMenuFileVO.oriName ne null}">
														<img src="../upload/${m.storeMenuFileVO.oriName}">
													</c:when>
													<c:otherwise>
														<img>
													</c:otherwise>
												</c:choose>
												<div class="md1d">${m.menuName}</div>
												<div class="md1d2">${m.description}</div>
											</div>
											
											
										<div class="md2">
											<div style="width: 100px;height:40px;line-height:40px; float:left;font-size: 17px;font-weight: bold;">가격</div>	
											<div style="width: 100px;height:40px;line-height:40px; float: right;font-size: 17px;font-weight: bold;">${m.menuPrice}원</div>
										</div>
								
									<c:if test="${!empty arTopping}">
										<div class="md3">
											<c:forEach items="${arTopping}" var="ar2">
												<c:choose>
													<c:when test="${ar2.menuNum eq m.num}">
														${ar2.toppingName}
													</c:when>
													<c:otherwise></c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</c:if>
									
										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<button type="button" class="btn btn-danger" data-dismiss="modal">주문하기</button>
											<button type="button" class="btn btn-danger" data-dismiss="modal">주문표에 추가</button>
										</div>

									</div>
								</div>
							</div>
						</c:if>

					</c:forEach>
			</ul>
		</div>
		
	</div>
</c:forEach>	
</div>




	<script>
		var a = document.getElementsByClassName("maDiv2dd");
		var b = document.getElementsByClassName("amd");
		$(".maDiv2d").each(function(index) {
			$(this).click(function() {
				if ($(a[index]).css("display") == "none") {
					$(a[index]).css("display", "block");
					$(b[index]).html("∧");
				} else {
					$(a[index]).css("display", "none");
					$(b[index]).html("∨");
				}
			});
		});

		function bgLayerOpen() {
			if (!$('.bgLayer').length) {
				$('<div class="bgLayer"></div>').appendTo($('body'));
			}
			var object = $(".bgLayer");
			var w = $(document).width() + 12;
			var h = $(document).height();

			object.css({
				'width' : w,
				'height' : h
			});
			object.fadeIn(500); //생성되는 시간 설정
		}

		function bgLayerClear() {
			var object = $('.bgLayer');

			if (object.length) {
				object.fadeOut(500, function() {
					object.remove();
				});
			}
		}

		$modal = $(".modal");

		$(".modal--open").click(function() {
			var id = $(this).attr("title");
			$modal = $("#" + id);
			//$('body').css("overflow", "hidden");
			$modal.show();
			bgLayerOpen();
			return false;
		});
		$(".modal--close").click(function() {
			var id = $(this).attr("title");
			$modal = $("#" + id);
			//$('body').css("overflow", "scroll");
			$modal.hide();
			bgLayerClear();
		});
	</script>