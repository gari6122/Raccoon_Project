<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>    

<body>   
    <div class="bodywrap">
    <script>
        AOS.init();
    </script>
        <h2><img src="/resources/img/js_img/btn_leap_icon.svg">아미보카드<img src="/resources/img/js_img/btn_leap_icon.svg"></h2>
        <div class="goods1" data-aos="fade-down">
            <a href="/product/getAList/detail?productCode=${resultA[0].productCode}"><div class="container_A">
                <img src="/resources/img/js_img/아미보1.jpg" alt="아미보1">
                <div class="text_A">${resultA[0].productName} <br> ${resultA[0].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보2.jpg" alt="아미보2">
                <div class="text_A">${resultA[1].productName} <br> ${resultA[1].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보3.jpg" alt="아미보3">
                <div class="text_A">${resultA[2].productName} <br> ${resultA[2].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보4.jpg" alt="아미보4">
                <div class="text_A">${resultA[3].productName} <br> ${resultA[3].productAPrice}원</div>
            </div></a>
        </div>
        <div class="goods2" data-aos="fade-down">
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보5.jpg" alt="아미보5">
                <div class="text_A">${resultA[4].productName} <br> ${resultA[4].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보6.jpg" alt="아미보6">
                <div class="text_A">${resultA[5].productName} <br> ${resultA[5].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보7.jpg" alt="아미보7">
                <div class="text_A">${resultA[6].productName} <br> ${resultA[6].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보8.jpg" alt="아미보8">
                <div class="text_A">${resultA[7].productName} <br> ${resultA[7].productAPrice}원</div>
            </div></a>
        </div>
        <div class="goods3" data-aos="fade-down">
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보9도트.jpg" alt="아미보9">
                <div class="text_A">${resultA[8].productName} <br> ${resultA[8].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보10도트.jpg" alt="아미보10">
                <div class="text_A">${resultA[9].productName} <br> ${resultA[9].productAPrice}원</div>
            </div></a>
            <a href="#"><div class="container_A">
                <img src="/resources/img/js_img/아미보11도트.jpg" alt="아미보11">
                <div class="text_A">${resultA[10].productName} <br> ${resultA[10].productAPrice}원</div>
            </div></a>
        </div>
    </div>
<!-- bodywrap 끝 -->


</body>
</html>
<%@ include file="../includes/footer.jsp" %>
