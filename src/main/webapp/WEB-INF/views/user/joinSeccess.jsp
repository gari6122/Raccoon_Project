<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>joinSeccess.jsp</title>
<script type="text/javascript">
	alert("가입처리가 완료되었습니다!");
</script>
</head>
<body> 
  <div class="test">
      <div class="under">
        <span class="line"></span>
        <div class="inputes">
          <li><input type="text" placeholder="아이디" id="user_id" name="user_id"></li>
          <li><input type="password" placeholder="비밀번호" id="user_pwd" name="user_pwd"></li>
          <li><input class="checkbox" type="checkbox" name="idsave" value="saveOk"> 아이디 저장</li>
          <div class="notice1" id="notice1">아이디나 패스워드를 확인해주세요.</div>
          <div class="btns">
            <a href="index1"><input class="img-btn-l" type="button" onclick="sendit()"></a>
            <a href="join"><input class="img-btn-j" type="button" onclick="sendit()"></a>
          </div>
        </div>
      </div>
      <footer>
        ⓒ 2023 MOYORA_NUGUL. All Rights Reserved.
      </footer>
    </div>
  </div>
</body>
</html>