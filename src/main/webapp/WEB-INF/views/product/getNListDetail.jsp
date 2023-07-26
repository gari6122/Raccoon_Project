<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<!-- 결제 스크립트 start -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>    
<script type="text/javascript">
	
	function fn_buyy() {
		price= ${productN.productNPrice};
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
			name : '${productN.productName}',
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
				
				alert('결제 성공적');
			    location.href = '/paymentDone3';
			
			$.ajax({
				url: "/paymentProcess.do3",
				method: "post",
				contentType: "application/json",
				data: JSON.stringify(paymentInfo),
				success: function(data, textStatus) {
					console.log(paymentInfo);
					location.href = "/paymentDone3";
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
                <img src="/resources/img/js_img/prev.svg" id="prevBtn_N" alt="pre">
                <img src="/resources/img/js_img/닌텐도상품앞면.png" style="width:400px; height:500px;" id="currentImg_N" alt="Product">
                <img src="/resources/img/js_img/next.svg" id="nextBtn_N" alt="next">
            </div>
            <div class="detail">
                <div class="detailL">
                    <div class="box1">
                        <img src="/resources/img/js_img/닌텐도상품앞면.png" style="width: 200px; border-radius: 35px;" alt="상품 앞면">
                        <div><b>정품 앞면</b></div>
                    </div>
                    <div class="box2">
                        <img src="/resources/img/js_img/닌텐도상품뒷면.png" style="width: 200px; border-radius: 35px;" alt="상품 뒷면">
                        <div><b>정품 뒷면</b></div>
                    </div>
                </div>
                <div class="center">
                    <hr>
                </div>
                <div class="detailR">
                    <h1><c:out value="${productN.productName}" /> <span><br><c:out value="${productN.productNPrice}" />원</span></h1>
                    <br><br>
                    <h4>모여봐요 동물의 숲 디자인의 TBU(열가소성 폴리 우레탄)재질의 보호 커버입니다.</h4>
                    <h4>부드러운 탄성과 하드함을 겸비하여,</h4>
                    <h4>Nintendo Switch lite 본체를 외부 충격이나</h4>
                    <h4>흠집으로부터 보호해줍니다.</h4>
                    <br>
                    <br>
                    <a onclick="fn_buyy()"><img src="/resources/img/js_img/주문하기.svg" alt="buy"></a>
                </div>
            </div>
        </div>
    </div>
   <!-- body 끝 -->
  
    
</body>
</html>
<%@ include file="../includes/footer.jsp" %>