<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%@ include file="../includes/header2.jsp" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main_shop</title>
       <link rel="stylesheet" href="/resources/common/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/hs_css/hsstyle.css">
    <link rel="stylesheet" href="/resources/css/yyj_css/style_yyj2.css">
    <script src="/resources/common/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

  <script>
 $( function() {
    $( "#accordion" )
      .accordion({
        header: "> div > h3"
      })
      .sortable({
        axis: "y",
        handle: "h3",
        stop: function( event, ui ) {
          // IE doesn't register the blur when sorting
          // so trigger focusout handlers to remove .ui-state-focus
          ui.item.children( "h3" ).triggerHandler( "focusout" );
 
          // Refresh accordion to handle new order
          $( this ).accordion( "refresh" );
        }
      });
  } );

$( function() {
    $( ".column" ).sortable({
      connectWith: ".column",
      handle: ".portlet-header",
      cancel: ".portlet-toggle",
      placeholder: "portlet-placeholder ui-corner-all"
    });
 
    $( ".portlet" )
      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
      .find( ".portlet-header" )
        .addClass( "ui-widget-header ui-corner-all" )
        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
 
    $( ".portlet-toggle" ).on( "click", function() {
      var icon = $( this );
      icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
      icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
    });
  } );
    </script>
</head>
<body>

   <div class="responsive"></div>
    
   <div class="notice-box">
        <img src="/resources/img/yyj_image/qna1.png">
        <p class="title-qna">자주 찾는 질문</p>
    </div>
    
    <div class="bodywrap">
         <div class="back">
            <div id="accordion">
                 <div class="group">
                <h3> Q. 하나의 섬에 몇 명까지 유저를 등록할 수 있나요?</h3>
                <div>
                    <p class="answer">Nintendo Switch 소프트웨어『모여봐요 동물의 숲』은 1대의 Nintendo Switch와
                        1개의 소프트웨어로, 본체에 등록되어 있는 최대 8명의 유저가 한 개의 섬을 
                        공유하여 플레이할 수 있습니다. </p>
                </div>
             </div>
             <div class="group">
                <h3>Q. 몇 명까지 함께 플레이할 수 있나요? </h3>
                <div>
                    <p class="answer"> 최대 4명까지 같은 섬의 주민이 되어 플레이할 수 있습니다. (플레이어 1명당 컨트롤러 1개가 필요합니다.)
                        로컬 통신/온라인 플레이로는 본인 혹은 친구의 섬에 모여서 최대 8명까지 함께 플레이할 수 있습니다. 
                        *온라인 플레이를 하려면 Nintendo Switch Online(유료) 가입이 필요합니다.
                        *Nintendo Switch Online은 18세 이상의 닌텐도 어카운트로만 이용할 수 있습니다.
                    </p>
                </div>
            </div>
            <div class="group">
                <h3>Q. 여러 개의 섬을 만들 수 있나요? </h3>
                <div>
                    <p class="answer">
                        본 소프트웨어를 여러 개 사용해도 만들 수 있는 섬은 본체 1대당 1개입니다. 다른 섬에서 플레이하려면 별도의 본체가 필요합니다.
                        섬의 저장 데이터는 Nintendo Switch 본체에 저장되기 때문에 본체 1대에 패키지 버전과 다운로드 버전을 따로 사용하더라도 섬(저장 데이터)은 1개입니다.
                    </p>
                </div>
            </div>
            <div class="group">
                <h3>Q. 바위를 깨버렸는데 어떻게 해야 하나요? </h3>
                <div>
                  <p class="answer">시간이 지나면 바위는 재생성되니 따로 걱정하지 않아도 됩니다. 
                     특정 소재가 급하게 필요하다면 마일 티켓을 이용해 다른 섬으로 이동해서
                     채집해 오는 방법이 있습니다. 바위는 섬에 최대 6개, 하루에 1개씩 생성됩니다.
                  </p>
                </div>
            </div>
            <div class="group">
                <h3>Q.「주민 대표」 를 변경할 수는 없나요?</h3>
                    <p class="answer">
                        게임 내에서 「주민 대표」를 변경할 수는 없습니다. 
                      「주민 대표」를 변경하고 싶은 경우에는 『모여봐요 동물의 숲』의 저장 데이터를 삭제하고 게임을 처음부터 다시 시작해 주십시오.
                     ※『모여봐요 동물의 숲』의 저장 데이터를 삭제할 때는 모든 유저의 저장 데이터가 삭제되므로 주의해 주십시오.
              </div>
            </div>
            
        </div>
       
    
      
        </div>
    </div>
</div>
</body>
</html>
<%@ include file="../includes/footer.jsp" %>


