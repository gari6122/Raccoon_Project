<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/hs_css/join.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/common/jquery-2.2.4.min.js"></script>
<script src="/resources/js/hs_js/hsjs.js"></script>

<title>회원가입페이지</title>
<style>
/* .notice1{
display: none;
}
.notice2{
display: none;
}
.notice3{
display: none;
} */
</style>

</head>
<body> 

  <div class="test">
      <div class="under">
          <div class="inputes">
            <div class="join">
              <div class="top">
                <span><b>회원가입</b></span>
                <span class="notice must">은 필수 입력 항목입니다.</span>
              </div>
            <hr style="border-width:1px 0 0 0; border-style:dashed; border-color:#00A971;">
          </div>
          
       	<form action="/user/join" method="post">
          <div class="p1">
						<input type="text" name="userId" placeholder="아이디"
							id="id" class="id must" onchange="checkId()" required>
						<div class="notice1"> √ 사용가능한 아이디입니다!</div>
						<div class="notice2"> √ 존재하는 아이디입니다!</div>
          </div>
          
           <div class="p2">
            <input type="password" name="userPw" placeholder="비밀번호" id="userpwd" class="must">
                        <input class="userpw_check" type="password" placeholder="비밀번호 확인" id="userpwd_check"
                            name="user_pwd" onchange="checkPwd()" required>
                        <div class="notice3"> √ 비밀번호가 일치하지 않습니다!</div>
          </div>
          
          <div class="p1">
            <input type="text" name="userName" id="user_name" class="long must" placeholder="이름(실명)">
          </div>
         
         
             <div class="p3">
            <input type="text" maxlength="8" name="userBirth" id="user_birth"
            oninput="this.value = this.value.replace(/[^0-9.]/g, '')"
              placeholder="생년월일(예:20000101)">
              <div class="radio_gg">
                <label class="gg">
                  <input type="radio" name="gender"> 여자
                </label>
                <label class="gg">
                  <input type="radio" name="gender"> 남자
                </label>
              </div>
          </div>
          
        <div class="p4">
         <input type="text" name="userAdd" id="userAdd" class="must" placeholder="주소검색 버튼을 누르거나 직접 주소를 입력하세요" id="user_add" required>
         <button id="add_search" class="img-btn-add" onclick="searchAddr();">
           <img src="/resources/img/hs_img/주소검색.svg" alt="주소검색" style="width: 150px; height: 50px;">
         </button>
       	</div>
       

          <div>
            <button id="fin_join" class="signupbtn img-btn-joinfin" type="submit" disable>
              <img src="/resources/img/hs_img/가입완료.svg" alt="가입완료" style="width: 100%; height: 100px;">
            </button>
          </div>
          
         </form>
          
        </div>
      </div>
    </div>

<footer>
    ⓒ 2023 MOYORA_NUGUL. All Rights Reserved.
  </footer>
</html>