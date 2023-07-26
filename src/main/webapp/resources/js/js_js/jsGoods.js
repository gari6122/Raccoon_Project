$(document).ready(function() {
    var images = [
        "/resources/img/js_img/굿즈상품앞면.png",
        "/resources/img/js_img/굿즈상품뒷면.png",
    ];
    var currentIndex = 0;

    // 초기 이미지 표시
    $("#currentImg_G").attr("src", images[currentIndex]);

    // 이전 버튼 클릭 시
    $("#prevBtn_G").on("click", function() {
        currentIndex--;
        if (currentIndex < 0) {
            currentIndex = images.length - 1;
        }
        transitionImage();
    });

    // 다음 버튼 클릭 시
    $("#nextBtn_G").on("click", function() {
        currentIndex++;
        if (currentIndex >= images.length) {
            currentIndex = 0;
        }
        transitionImage();
    });

    // 이미지 전환 함수
    function transitionImage() {
        $("#currentImg_G").fadeOut(400, function() {
            $(this).attr("src", images[currentIndex]).fadeIn(200);
        });
    }
});