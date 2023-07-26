<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header2.jsp" %>
    
<div class="commu-title">
    <div>
        <h1 class="page-header">커뮤니티 게시판</h1>
    </div>
 </div>
     
<div class="row">
	<div class="col-lg-12">
		<div class="commu-main-wrap">
			<div class="panel-body">
				<form action="/board/modify" method="post" role="form">    
           			<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}" />">
					<input type="hidden" name="amount" value="<c:out value="${cri.amount}" />">
					<input type="hidden" name="type" value="<c:out value="${cri.type}" />" />
					<input type="hidden" name="keyword" value="<c:out value="${cri.keyword}" />" />    
					
					<div class="form-group">
						<label>번호</label>
						<input class="form-control" name="bno" value='
						<c:out value="${board.bno }"/>' readonly="readonly">
					</div>
              		<div class="form-group">
               		<label>제목</label>
                 	<input class="form-control" name="title" value='<c:out value="${board.title}" />'>                       
         			</div>                       
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name="content"><c:out value="${board.content}" /></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" name="writer" value='<c:out value="${board.writer}" />' readonly="readonly">                                                 
					</div>
           
					<div class="form-group" style="display: none;">
						<label>RegDate</label>
						<input class="form-control" name="regdate" value='<fmt:formatDate value="${board.regdate}" pattern="yyyy/MM/dd" />' readonly="readonly">                                                
					</div>  
					<div class="form-group" style="display: none;">
						<label>UpdateDate</label>
						<input class="form-control" name="updateDate" value='<fmt:formatDate value="${board.updateDate}" pattern="yyyy/MM/dd" />' readonly="readonly">                                                
					</div>
               
					<div class="reply-modify-add-btn">
						<div class="modify-btn">
						<a data-oper="modify" onclick="location.href='/board/list?bno=<c:out value="${board.bno}" />'">
							<img class="modify-btn-img" src="/resources/img/sb_img/수정버튼1.svg" alt="수정버튼">
							<img class="modify-btn-img-hover" src="/resources/img/sb_img/수정버튼2.svg" alt="수정버튼2">
						</a>
						</div>
						<div class="remove-btn" id="remove-btn">
							<a id="remove-btn" data-oper="remove">
								<img class="remove-btn-img" src="/resources/img/sb_img/삭제버튼1.svg" alt="삭제버튼">
								<img class="remove-btn-img-hover" src="/resources/img/sb_img/삭제버튼2.svg" alt="삭제버튼2">
							</a>
						</div>
					</div>
					
       			</form>
      		</div>
    	</div>
	</div>
</div>
<!-- /.row -->
            
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form");
		
		$('a').on("click", function(e) {
			
			e.preventDefault();
			var operation = $(this).data("oper");
			console.log(operation);
			
			if(operation === 'remove'){
				formObj.attr("action", "/board/remove");
			} else if (operation === 'list') {
				formObj.attr("action", "/board/list").attr("method", "get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();							
				
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(typeTag);
				formObj.append(keywordTag);
			}
			formObj.submit();  
		});            		
	});            
</script>
            
<%@ include file="../includes/footer.jsp" %>