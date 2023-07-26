$(document).ready(function() {
    var images = [
        "/resources/img/js_img/아미보1.jpg",
        "/resources/img/js_img/정품 뒷면.PNG",
    ];
    var currentIndex = 0;

    // 초기 이미지 표시
    $("#currentImg_A").attr("src", images[currentIndex]);

    // 이전 버튼 클릭 시
    $("#prevBtn_A").on("click", function() {
        currentIndex--;
        if (currentIndex < 0) {
            currentIndex = images.length - 1;
        }
        transitionImage();
    });

    // 다음 버튼 클릭 시
    $("#nextBtn_A").on("click", function() {
        currentIndex++;
        if (currentIndex >= images.length) {
            currentIndex = 0;
        }
        transitionImage();
    });

    // 이미지 전환 함수
    function transitionImage() {
        $("#currentImg_A").fadeOut(400, function() {
            $(this).attr("src", images[currentIndex]).fadeIn(200);
        });
    }
});