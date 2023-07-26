<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>    

<body>
 <!--세정 맵 시작 -->

        <div class="bodywrap">
            <div class="loadtext">
                <img src="/resources/img/sj_image/btn_leap_icon.svg" />  너굴이네 찾아 오시는 길 <img src="/resources/img/sj_image/btn_leap_icon.svg" />
            </div>
            <div class="bodybg1">                
              <div class="bodybg2">
                    <div id="map" style="width:70%;height:420px;"></div>
                    <p class="maptext1"><img src="/resources/img/sj_image/leaf.svg" class="maptextimg">
                         &nbsp; 주소 : 서울특별시 구로구 경인로 557 삼영빌딩 4층 
                    우) 08216
                    </p>
                    <hr style="width: 810px;">
                    <p class="maptext2"><img src="/resources/img/sj_image/leaf.svg" class="maptextimg">
                        &nbsp; TEL : 02-1234-5678
                    </p>
                    <hr style="width: 810px;">
                    <p class="maptext3"><img src="/resources/img/sj_image/leaf.svg" class="maptextimg">
                        &nbsp; 대중교통 이용시
                        &nbsp;  지하철 : 1호선 구로역  3번 출구 &nbsp;
                        <img src="/resources/img/sj_image/train.svg" style="width: 25px; height: 25px; margin-bottom: 5px;">
                    </p>
                    <img src="/resources/img/sj_image/콩돌이.png" class="bottomimg">
                </div>
            </div>
            
        </div>

        <script>
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                mapOption = {
                    center: new kakao.maps.LatLng(37.5030698, 126.8789856), // 지도의 중심좌표
                    level: 4 // 지도의 확대 레벨
                };

            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

            var imageSrc = '/resources/img/sj_image/너굴.svg', // 마커이미지의 주소입니다    
                imageSize = new kakao.maps.Size(100, 100), // 마커이미지의 크기입니다
                imageOption = { offset: new kakao.maps.Point(27, 93) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

            // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
                markerPosition = new kakao.maps.LatLng(37.5030698, 126.8789856); // 마커가 표시될 위치입니다

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition,
                image: markerImage // 마커이미지 설정 
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);  
        </script>
        
        <!-- 세정 맵 끝 -->

      
</body>
</html>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>    