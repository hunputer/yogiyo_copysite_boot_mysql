<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>

<!-- 결제창 -->
<script type="text/javascript">
var storeNum = '${dto.storeNum}';
var id = '${member.id}';
var totalPrice = '${dto.totalPrice}';
var orderContents = '${dto.orderContents}';
var address = '${dto.address}';
var phone = '${dto.phone}';
var comment = '${dto.comment}';
var tradeMethod = '${dto.tradeMethod}';
var usepoint = '${usepoint}';
var couponNum = '${couponNum}';


IMP.init('imp85483548');

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '별도 지정 안함',
    amount : '100', //판매 가격
    buyer_email :'impor@im.com' ,
    buyer_name : '${dto.id}',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
    	$.post("./insertOrderList", {storeNum : storeNum, id : id, totalPrice : totalPrice, orderContents : orderContents, address : address, phone : phone, comment : comment, tradeMethod : tradeMethod, usepoint : usepoint, couponNum : couponNum}, function(data){
    		setTimeout(function(){}, 1000);
        })
        
        var msg = '결제가 완료되었습니다.';
       
       alert(msg);
       
       location.href="${pageContext.request.contextPath}/mypage/mypageOrder";
       
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        alert(msg);
        //location.href="./setOrderList_card?order_num="+num;
    }
  
    
});
</script>

</body>
</html>