<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer>
    <!--  챗봇 스크립트 -->
	<script>
	  (function(){var w=window;if(w.ChannelIO){return w.console.error("ChannelIO script included twice.");}var ch=function(){ch.c(arguments);};ch.q=[];ch.c=function(args){ch.q.push(args);};w.ChannelIO=ch;function l(){if(w.ChannelIOInitialized){return;}w.ChannelIOInitialized=true;var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";var x=document.getElementsByTagName("script")[0];if(x.parentNode){x.parentNode.insertBefore(s,x);}}if(document.readyState==="complete"){l();}else{w.addEventListener("DOMContentLoaded",l);w.addEventListener("load",l);}})();
	
	  ChannelIO('boot', {
	    "pluginKey": "5452aca6-d796-4925-bd1c-2b6186bb3081"
	  });
	</script>
    <div class="bottom">
        <div class="site">
            <p>사이트를 자주 오고 싶다면?</p>
            <a href="#" id="favorite" title="즐겨찾기 등록"><img src="/resources/img/hs_img/btn_bookmark.svg"></a>
            <a href="/roadMap/map" id="road" title="찾아오는 길"><img src="/resources/img/sj_image/btn_roadmap.svg"></a>
        </div>
        <div class="copy">
            ⓒ 2023 MOYORA_NUGUL │ NEW_SS5
        </div>
    </div>
</footer>

</html>