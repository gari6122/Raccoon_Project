<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main_shop</title>
    
    <!-- CSS -->
    <link rel="stylesheet" href="/resources/common/bootstrap.css">
    <link rel="stylesheet" href="/resources/dist/css/sb-admin-2.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <link rel="stylesheet" href="/resources/css/hs_css/hsstyle.css"> <!-- 한솔 css -->
    <link rel="stylesheet" href="/resources/css/js_css/jsstyle.css"> <!-- 지수 css -->
    <link rel="stylesheet" href="/resources/css/sj_css/sjstyle.css"> <!-- 세정 css -->
    <link rel="stylesheet" href="/resources/css/sb_css/sbstyle.css"> <!-- 수빈 css -->
    
    <!-- SCRIPT -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9532052cccdea5cdef061ad336c9583d"></script>
    <script src="/resources/common/jquery-2.2.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="/resources/js/js_js/jsAmibo.js"></script>
    <script src="/resources/js/js_js/jsGoods.js"></script>
    <script src="/resources/js/js_js/jsNintendo.js"></script>
    <script src="/resources/common/bootstrap.min.js"></script>
     <script src="/resources/dist/js/sb-admin-2.js"></script>
    
    <script>
        $(document).ready(function () {
            $('#favorite').on('click', function (e) {
                var bookmarkURL = window.location.href;
                var bookmarkTitle = document.title;
                var triggerDefault = false;

                if (window.sidebar && window.sidebar.addPanel) {
                    // Firefox version < 23 
                    window.sidebar.addPanel(bookmarkTitle, bookmarkURL, '');
                } else if ((window.sidebar && (navigator.userAgent.toLowerCase().indexOf('firefox') > -1)) || (window.opera && window.print)) {
                    // Firefox version >= 23 and Opera Hotlist
                    var $this = $(this);
                    $this.attr('href', bookmarkURL);
                    $this.attr('title', bookmarkTitle);
                    $this.attr('rel', 'sidebar');
                    $this.off(e);
                    triggerDefault = true;
                } else if (window.external && ('AddFavorite' in window.external)) {
                    // IE Favorite
                    window.external.AddFavorite(bookmarkURL, bookmarkTitle);
                } else {
                    // WebKit - Safari/Chrome
                    alert((navigator.userAgent.toLowerCase().indexOf('mac') != -1 ? 'Cmd' : 'Ctrl') + '+D 키를 눌러 즐겨찾기에 등록하실 수 있습니다.');
                }

                return triggerDefault;
            });
        });

        //토글버튼
        $(document).ready(function () {
            const toggleBtn = document.querySelector('.navbar__toggleBtn');
            const menu = document.querySelector('.navbar__menu');
            const links = document.querySelector('.navbar__links');

            toggleBtn.addEventListener('click', () => {
                menu.classList.toggle('active');
                links.classList.toggle('active');
            });
        });
    </script>
</head>

<body>
    <div class="nav-wrap">
        <nav class="navbar">
            <a href="#" class="navbar__toggleBtn"><img src="/resources/img/hs_img/btn_leap_icon.svg" alt="" srcset=""></i></a>
            <ul class="navbar__menu">
                <div class="test">
                    <li>
                    	<a href="/board/list"><img src="/resources/img/hs_img/btn_change_community.svg" alt="바꾸기버튼"
                                style="width: 80%; height: auto;">
                        </a>
                    </li>
                </div>

            </ul>
            <ul class="navbar__links">
                <li><a href="/user/login"><img src="/resources/img/hs_img/아이콘_유저.svg" alt="유저버튼"
                            style="width: 100%; height: auto;"></a></li>
                <li><a href="#"><img src="/resources/img/hs_img/아이콘_장바구니.svg" alt="장바구니버튼" style="width: 100%; height: auto;"></a>
                </li>
            </ul>
        </nav>
        <div class="navbar__logo">
            <a href="index1.jsp"><img src="/resources/img/hs_img/logo.svg" alt="로고" style="width: 100%; height: auto; "></a>
        </div>
    </div>



    <header>
        <div class="menu">
            <div class="menu-wrap">
                <div class=" row">
                    <a href="/notice">
                        <li class="col-md-4 menuli m_tile">
                            <img src="/resources/img/hs_img/btn_leap_icon.svg" class="himg">
                            공지사항
                        </li>
                    </a>
                    <!-- <li class="col-sm menuli m_br">*</li> -->
                    <a href="/qna">
                        <li class="col-md-4 menuli m_tile">
                            <img src="/resources/img/hs_img/btn_leap_icon.svg" class="himg">FAQ
                        </li>
                    </a>
                    <!-- <li class="col-sm menuli m_br">*</li> -->
                    <a href="/board/list">
                        <li class="col-md-4 menuli m_tile">
                            <img src="/resources/img/hs_img/btn_leap_icon.svg" class="himg">
                            와글바글
                        </li>
                    </a>
                </div>
            </div>
        </div>
    </header>
