<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="/resources/css/hs_css/login.css">
<script src="/resources/common/jquery-2.2.4.min.js"></script>
<script src="/resources/js/hansol_js/hsjs.js"></script>
<title>Join_main</title>


<script type="text/javascript">
function loginCheck(){
    var id = $('#id').val();  	//id값 아이디가 "id"인 입력란의 값을 저장
    var pw = $('#pwd').val();	//pw값 아이디가 "pw"인 입력란의 값을 저장
    
    var allData =JSON.stringify({"userId":id ,"userPw":pw});
    
    $.ajax({
        url:'./loginCheck', //Controller에서 요청 받을 주소
        type:'post', //POST 방식으로 전달
        data: allData,
        dataType : "json",
        contentType:"application/json; charset=UTF-8",
        success:function(data){ //컨트롤러에서 넘어온 cnt값을 받음
        	console.log(typeof data);
            if(data.logincnt == 0){ 	// 일치안함
            	$('.notice1').css("display","none");
            	console.log("비번이 일치하지 않음!");
            } else{	// cnt가 1일 경우 : 일치
            	alert("너굴너굴에 모인 것을 환영합니다!");
            	location.href='./loginSuccess'
            	
            }
        },
        error:function(){
            alert("에러입니다");
        }
    });
}

</script>



</head>
<body> 
  <div class="test">
      <div class="under">
        <span class="line"></span>
        <div class="inputes">
        <form action="loginCheck.do" id="loginFrm" name="loginFrm">
          <input type="text" placeholder="아이디" id="id" name="userId">
          <input type="password" placeholder="비밀번호" id="pwd" name="userPw">
          <input class="checkbox" type="checkbox" id="idsave" name="idsave" value="saveOk"> 아이디 저장
          <div class="notice1" id="notice1">아이디나 패스워드를 확인해주세요.</div>
        </form>
          <div class="btns">
            <input class="img-btn-l" type="button" onclick="loginCheck()">
            <a href="join"><input class="img-btn-j" type="button"></a>
          </div>
        </div>
      </div>
      <footer>
        ⓒ 2023 MOYORA_NUGUL. All Rights Reserved.
      </footer>
    </div>
</body>
</html>