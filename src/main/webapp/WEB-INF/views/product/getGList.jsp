<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>    
    
<body>
 <!-- bodywrap 시작 -->
    <div class="bodywrap">
    <script>
        AOS.init();
    </script>
        <h2><img src="/resources/img/js_img/btn_leap_icon.svg">굿즈<img src="/resources/img/js_img/btn_leap_icon.svg"></h2>
        <div class="goods1" data-aos="fade-down">
            <a href="/product/getGList/detail?productCode=${resultG[0].productCode}"><div class="container_S">
                <img src="/resources/img/js_img/굿즈1.jpg" alt="굿즈1">
                <div class="text_S">${resultG[0].productName} <br>
        ${resultG[0].productGPrice}원</div>
            </div></a>
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈2.jpg" alt="굿즈2">
                <div class="text_S">${resultG[1].productName} <br>
        ${resultG[1].productGPrice}원</div>
            </div></a>
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈3.jpg" alt="굿즈3">
                <div class="text_S">${resultG[2].productName} <br>
        ${resultG[2].productGPrice}원</div>
            </div></a>
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈4.jpg" alt="굿즈4">
                <div class="text_S">${resultG[3].productName} <br>
        ${resultG[3].productGPrice}원</div>
            </div></a>
        </div>
        <div class="goods2" data-aos="fade-down">
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈5.jpg" alt="굿즈5">
                <div class="text_S">${resultG[4].productName} <br>
        ${resultG[4].productGPrice}원</div>
            </div></a>
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈6.jpg" alt="굿즈6">
                <div class="text_S">${resultG[5].productName} <br>
        ${resultG[5].productGPrice}원</div>
            </div></a>
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈7.jpg" alt="굿즈7">
                <div class="text_S">${resultG[6].productName} <br>
        ${resultG[6].productGPrice}원</div>
            </div></a>
            <a href="#"><div class="container_S">
                <img src="/resources/img/js_img/굿즈8.jpg" alt="굿즈8">
                <div class="text_S">${resultG[7].productName} <br>
        ${resultG[7].productGPrice}원</div>
            </div></a>
        </div>
    </div>
<!-- bodywrap 끝 -->


</body>
</html>
<%@ include file="../includes/footer.jsp" %>    
