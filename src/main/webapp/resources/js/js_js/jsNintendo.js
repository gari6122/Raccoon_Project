$(document).ready(function() {
    var images = [
        "/resources/img/js_img/닌텐도상품앞면.png",
        "/resources/img/js_img/닌텐도상품뒷면.png",
    ];
    var currentIndex = 0;

    // 초기 이미지 표시
    $("#currentImg_N").attr("src", images[currentIndex]);

    // 이전 버튼 클릭 시
    $("#prevBtn_N").on("click", function() {
        currentIndex--;
        if (currentIndex < 0) {
            currentIndex = images.length - 1;
        }
        transitionImage();
    });

    // 다음 버튼 클릭 시
    $("#nextBtn_N").on("click", function() {
        currentIndex++;
        if (currentIndex >= images.length) {
            currentIndex = 0;
        }
        transitionImage();
    });

    // 이미지 전환 함수
    function transitionImage() {
        $("#currentImg_N").fadeOut(400, function() {
            $(this).attr("src", images[currentIndex]).fadeIn(200);
        });
    }
});