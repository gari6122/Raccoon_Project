//아이디 중복체크 함수
function checkId(){
    var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
    $.ajax({
        url:'./idCheck', //Controller에서 요청 받을 주소
        type:'post', //POST 방식으로 전달
        data: id,
        dataType : "json",
        contentType:"application/json; charset=UTF-8",
        success:function(data){ //컨트롤러에서 넘어온 cnt값을 받음
        	console.log(typeof data);
            if(data.cnt == 0){ 	//0 존재 안함
                $('.notice2').css("display","none");
                $('.notice1').css("display", "none");
            
                idck = 1;
	            console.log("존재안함");
	            
                $('.notice1').css("display", "block");
            } else{	// cnt가 1일 경우 : 이미 존재하는 아이디
            	$('.notice2').css("display","none");
            	$('.notice1').css("display", "none");
                $('.notice2').css("display","block");
            
                console.log("존재");
                $('#id').val("");
                document.getElementById("id").focus();
                
            }
        },
        error:function(){
            alert("에러입니다");
        }
    });
}
    
//비밀번호 확인 체크
function checkPwd() {
    var pwd = $('#userpwd').val();
    var pwdCheck = $('#userpwd_check').val();

    //비밀번호가 일치 하지 않으면 체크박스 뜸
    if (pwd != pwdCheck) {
        $('.notice3').css("display", "block");
        $('#userpwd').val("");
        $('#userpwd_check').val("");
        document.getElementById("userpwd").focus();

    } else {
        $('.notice3').css("display", "none");
    }
}

//카카오 주소 api활용
function searchAddr() {
    new daum.Postcode({
        oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === 'R') {
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraAddr !== '') {
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("userAdd").value = extraAddr;

            } else {
                document.getElementById("userAdd").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("userAdd").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("userAdd").focus();
        }
    }).open();
}


