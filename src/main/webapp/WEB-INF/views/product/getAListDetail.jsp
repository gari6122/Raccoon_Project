<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>  
<!-- 결제 스크립트 start -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script type="text/javascript">
	
	function fn_buyy() {
		price= ${productA.productAPrice};
		fn_buy();
	}
	
	function fn_buy() {
		var IMP = window.IMP;
		//참고: https://github.com/iamport/iamport-manual/blob/master/%EC%9D%B8%EC%A6%9D%EA%B2%B0%EC%A0%9C/README.md#pc-mobile
		IMP.init('imp20831366');
		// IMP.request_pay(param, callback) 결제창 호출
		IMP.request_pay({
			pg: "html5_inicis",
			pay_method: "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '${productA.productName}',
			amount : price,
			buyer_email : 'yeojinable@naver.com',
			buyer_name : '봉미선',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456',
			m_redirect_url: '/paymentDone'
		}, function(rsp) { //callback
			
			if (rsp.success) {
				var paymentInfo = {
				imp_uid: rsp.imp_uid,
				buyer_name: rsp.user_id,
				merchant_uid: rsp.merchant_uid,
				paid_amount: rsp.paid_amount,
				apply_num: rsp.apply_num,
				paid_at: new Date()
				 
			};
				
				alert('결제가 완료되었습니다.');
			    location.href = '/paymentDone';
			
			$.ajax({
				url: "/paymentProcess.do",
				method: "post",
				contentType: "application/json",
				data: JSON.stringify(paymentInfo),
				success: function(data, textStatus) {
					console.log(paymentInfo);
					location.href = "/paymentDone";
				},
				error: function(e) {
					console.log(e);
				}
			});
			
			
			
			} else {
				alert("결제 실패: " + rsp.error_msg);
			}
		});

	}
</script>

<body>
    <!-- body 시작 -->
    <div class="bodywrap">
        <div class="back_dot">
            <div class="main">
                <img src="/resources/img/js_img/prev.svg" id="prevBtn_A" alt="pre">
                <img src="/resources/img/js_img/아미보1.jpg"  id="currentImg_A" alt="Product">
                <img src="/resources/img/js_img/next.svg" id="nextBtn_A" alt="next">
            </div>
            <div class="detail">
                <div class="detailL">
                    <div class="box1">
                        <img src="/resources/img/js_img/아미보1.jpg" alt="상품 앞면">
                        <div><b>정품 앞면</b></div>
                    </div>
                    <div class="box2">
                        <img src="/resources/img/js_img/정품 뒷면.PNG" alt="상품 뒷면">
                        <div><b>정품 뒷면</b></div>
                    </div>
                </div>
                <div class="center">
                    <hr>
                </div>
                <div class="detailR">
                    <h1><c:out value="${productA.productName}" /> <span><c:out value="${productA.productAPrice}" />원</span></h1>
                    <br>
                    <h4>취미: 뛰어다니기</h4>
                    <h4>말버릇: 탕</h4>
                    <h4>좋아하는 곡: K.K.차이나</h4>
                    <h4>선호 스타일: 액티브</h4>
                    <h4>선호 색상: 파란색, 보라색</h4>
                    <br>
                    <h4>"닭 잡아먹고 오리발 내민다."</h4>
                    <br>
                    <a  onclick="fn_buyy()"><img src="/resources/img/js_img/주문하기.svg" alt="buy"></a>
                </div>
            </div>
        </div>
    </div>
   <!-- body 끝 -->
   
    
</body>  
</html>
<%@ include file="../includes/footer.jsp" %>  