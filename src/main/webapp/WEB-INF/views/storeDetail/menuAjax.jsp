<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

			<!-- 클릭 시 나타나는 모달창 -->
			<div class="modal" id="modal${vs.count}">
				<div class="screen">
					<button type="button" title="modal${vs.count}" value="close"
						class="btn modal--close">Χ</button>
					<div class="layerpop">
						<p class="layerpop__container">　　메뉴상세</p>
					</div>
				</div>

				<div class="md1">
					<c:choose>
						<c:when test="${ar.storeMenuFileVO.oriName ne null}">
							<img src="../upload/${ar.storeMenuFileVO.oriName}">
						</c:when>
						<c:otherwise>
							<img>
						</c:otherwise>
					</c:choose>
					<div class="md1d">${ar.menuName}</div>
				</div>
			</div>
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

							<li class="modal--open" title="modal${cg}${vs.count}">
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
										<div class="modal-header">
											<h1 class="modal-title">Modal Heading</h1>
											<button type="button" class="close" data-dismiss="modal">×</button>
										</div>

										<!-- Modal body -->
										<div class="modal-body">
											<h3>Some text to enable scrolling..</h3>
											<p>Some text to enable scrolling.. Lorem ipsum dolor sit
												amet, consectetur adipiscing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat. Duis aute irure dolor in
												reprehenderit in voluptate velit esse cillum dolore eu
												fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
												proident, sunt in culpa qui officia deserunt mollit anim id
												est laborum consectetur adipiscing elit, sed do eiusmod
												tempor incididunt ut labore et dolore magna aliqua. Ut enim
												ad minim veniam, quis nostrud exercitation ullamco laboris
												nisi ut aliquip ex ea commodo consequat.</p>
											<p>Some text to enable scrolling.. Lorem ipsum dolor sit
												amet, consectetur adipiscing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat. Duis aute irure dolor in
												reprehenderit in voluptate velit esse cillum dolore eu
												fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
												proident, sunt in culpa qui officia deserunt mollit anim id
												est laborum consectetur adipiscing elit, sed do eiusmod
												tempor incididunt ut labore et dolore magna aliqua. Ut enim
												ad minim veniam, quis nostrud exercitation ullamco laboris
												nisi ut aliquip ex ea commodo consequat.</p>

											<p>Some text to enable scrolling.. Lorem ipsum dolor sit
												amet, consectetur adipiscing elit, sed do eiusmod tempor
												incididunt ut labore et dolore magna aliqua. Ut enim ad
												minim veniam, quis nostrud exercitation ullamco laboris nisi
												ut aliquip ex ea commodo consequat. Duis aute irure dolor in
												reprehenderit in voluptate velit esse cillum dolore eu
												fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
												proident, sunt in culpa qui officia deserunt mollit anim id
												est laborum consectetur adipiscing elit, sed do eiusmod
												tempor incididunt ut labore et dolore magna aliqua. Ut enim
												ad minim veniam, quis nostrud exercitation ullamco laboris
												nisi ut aliquip ex ea commodo consequat.</p>
										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<button type="button" class="btn btn-danger"
												data-dismiss="modal">Close</button>
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
			//bgLayerOpen();
			return false;
		});
		$(".modal--close").click(function() {
			var id = $(this).attr("title");
			$modal = $("#" + id);
			//$('body').css("overflow", "scroll");
			$modal.hide();
			//bgLayerClear();
		});
	</script>