<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>처음화면</title>
</head>
<body>
<meta http-equiv="refresh" content="3; url=index1.jsp">
    <div class="parent">
        <canvas id="canvasText">
        </canvas>
        <canvas id="canvas">
    </div>
    </canvas>
    <link rel="stylesheet" href="/resources/css/hs_css/style1.css">
    <script src='/resources/js/hs_js/TweenMax.min.js'></script>
    <script src="/resources/common/jquery-2.2.4.min.js"></script>
    <script src="/resources/js/hs_js/script1.js"></script>
    <script>
        // 1. canvas 엘리먼트를 취득한다.
        const canvas1 = document.getElementById('canvasText');
        canvas1.setAttribute("width", window.innerWidth);

        var x = canvas1.width / 2;
        var y = canvas1.height / 2;

        // 2. 2d모드의 그리기 객체를 취득한다. => 이 객체를 통해 canvas에 그림을 그릴 수 있다.
        const ctx = canvas1.getContext("2d");

        // 3-3. 텍스트 폰트 설정
        ctx.font = "bold 30pt SUITE"; //Arial서체 없을 경우, sans-serif 적용
        // 3-4. 텍스트 색상 설정
        ctx.fillStyle = '#7D6554';
        ctx.textAlign = "center";
        ctx.fillText("모여라 너굴너굴로 들어가는 중!", x, y);
   </script>
</body>
</html>