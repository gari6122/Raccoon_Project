<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
   
<body>
    <!-- bodywrap 시작 -->
    <div class="bodywrap">
    <script>
        AOS.init();
    </script>
        <h2><img src="/resources/img/js_img/btn_leap_icon.svg">닌텐도 용품<img src="/resources/img/js_img/btn_leap_icon.svg"></h2>
        <div class="goods1" data-aos="fade-down">
         <a href="/product/getNList/detail?productCode=${resultN[0].productCode}">
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품1.jpg" alt="닌텐도상품1">
                <div class="text_S">${resultN[0].productName} <br> ${resultN[0].productNPrice}원</div>
            </div></a>
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품2.jpg" alt="닌텐도상품2">
                <div class="text_S">${resultN[1].productName} <br> ${resultN[1].productNPrice}원</div>
            </div>
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품3.jpg" alt="닌텐도상품3">
                <div class="text_S">${resultN[2].productName} <br> ${resultN[2].productNPrice}원</div>
            </div>
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품4.jpg" alt="닌텐도상품4">
                <div class="text_S">${resultN[3].productName} <br> ${resultN[3].productNPrice}원</div>
            </div>
        </div>
        <div class="goods2" data-aos="fade-down">
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품5.jpg" alt="닌텐도상품5">
                <div class="text_S">${resultN[4].productName} <br> ${resultN[4].productNPrice}원</div>
            </div>
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품6.jpg" alt="닌텐도상품6">
                <div class="text_S">${resultN[5].productName} <br> ${resultN[5].productNPrice}원</div>
            </div>
            <div class="container_S">
                <img src="/resources/img/js_img/닌텐도상품7.jpg" alt="닌텐도상품7">
                <div class="text_S">${resultN[6].productName} <br> ${resultN[6].productNPrice}원</div>
            </div>
        </div>
    </div>
<!-- bodywrap 끝 -->


</body>
</html>
<%@ include file="../includes/footer.jsp" %>
