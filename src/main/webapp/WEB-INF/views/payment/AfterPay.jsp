<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/common/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/hs_css/hsstyle.css">
    <link rel="stylesheet" href="/resources/css/yyj_css/style_yyj3.css">
    <script src="/resources/common/jquery-2.2.4.min.js"></script>
    <script src="/resources/common/bootstrap.min.js"></script>
<title>결제내역</title>
</head>
<body>
    <%@ include file="../includes/header.jsp" %>


    <div class="bodywrap">
        <div class="notice-box">
            <p class="title-qna">결제 내역</p>
        </div>
        <div class="back">
            <div class="back2">
            <table class="table">
                <thead>
                    <tr>
                        <th>상품</th>
                        <th>금액</th>

                    </tr>
                </thead>
                <tbody>
                    <tr class="tr">
                        <td>${name}</td>
                        <td>${price}</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td>총 합계</td>
                        <td>${price}</td>
                    </tr>
                </tfoot>
            </table>
            <img class="pay1" src="/resources/img/yyj_image/pay1.png" alt="payImage">
            </div>
        </div>
</body>
</html>

