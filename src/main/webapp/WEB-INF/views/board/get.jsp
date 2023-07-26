<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
    
<div class="commu-title">
	<div>
		<h1 class="page-header">커뮤니티 게시판</h1>
	</div>
</div>

<div class="commu-main-wrap">
	<div class="panel-body">
		<form id="operForm" action="/board/modify" method="get">
			<div class="form-group">
				<label>번호</label> <input class="form-control" name="bno" value='<c:out value="${board.bno}" />' readonly="readonly">
			</div>
			<div class="form-group">
				<label>제목</label> <input class="form-control" name="title" value='<c:out value="${board.title}" />' readonly="readonly">
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea class="form-control" rows="3" name="content" readonly="readonly"><c:out value="${board.content}" /></textarea>
			</div>
			<div class="form-group">
				<label>작성자</label> <input class="form-control" name="writer" value='<c:out value="${board.writer}" />' readonly="readonly">
			</div>
			
			<div class="reply-modify-add-btn">
				<div class="modify-btn">
					<a data-oper="modify" onclick="location.href='/board/list?bno=<c:out value="${board.bno}" />'">
						<img class="modify-btn-img" src="/resources/img/sb_img/수정버튼1.svg" alt="수정버튼">
						<img class="modify-btn-img-hover" src="/resources/img/sb_img/수정버튼2.svg" alt="수정버튼2">
					</a>
				</div>
			</div>
			
			<input type="hidden" id='bno' name="bno" value="<c:out value="${board.bno}" />">
			<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}" />">
			<input type="hidden" name="amount" value="<c:out value="${cri.amount}" />">
			<input type="hidden" name="type" value="<c:out value="${cri.type}" />" />
			<input type="hidden" name="keyword" value="<c:out value="${cri.keyword}" />" />
		</form>
	</div>
	
	<div class="commu-reply-wrap">
		<div class="">
			<div class="panel">
				<div class="panel-heading">
				<i class="reply-title"></i>댓글
				</div>
				<div class="panel-heading">
				
				<button id="addReplyBtn">New Reply</button>
			</div>
				<div class="panel-body">
					<ul class="chat">
						<li class="left clearfix" data-rno='12'>
							<div>
								<div class="header">
									<strong class="primary-font"></strong>
									<small class="pull-right text-muted"></small>          						
								</div>
							
							</div>
						</li>
					</ul>
				</div>    
			</div>
		</div>
	</div>
	<!-- /.commu-reply-wrap -->
	
	<div>          			    
		<div class="remove-btn" style="height: 80px;">
			<a id="remove-btn" data-oper="list">
				<img class="remove-btn-img" src="/resources/img/sb_img/목록버튼1.svg" alt="목록버튼">
				<img class="remove-btn-img-hover" src="/resources/img/sb_img/목록버튼2.svg" alt="목록버튼2">
			</a>
		</div>
	</div>  
</div>
<!-- /.commu-main-wrap -->
            
<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
			</div>
			
			<div class="modal-body">
				<div class="form-group">
					<label>Reply</label>
					<input class="form-control" name="reply" value="New Reply">
				</div>
				<div class="form-group">
					<label>Replyer</label>
					<input class="form-control" name="replyer" value="replyer">
				</div>
				<div class="form-group">
					<label>Reply Date</label>
					<input class="form-control" name="replyDate" value="">
				</div>
			</div>
			
			<div class="modal-footer">
				<button id="modalModBtn" type="button" class="btn btn-warning">수정</button>
				<button id="modalRemoveBtn" type="button" class="btn btn-danger">삭제</button>
				<button id='modalRegisterBtn' type="button" class="btn btn-primary">작성</button>
				<button id="modalCloseBtn" type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- /.modal -->

<script type="text/javascript" src="/resources/js/reply.js"></script>

<script type="text/javascript">            
$(document).ready(function() {
	var bnoValue = '<c:out value = "${board.bno}"/>';
	var replyUL = $(".chat");

	showList(1);

	function showList(page) {

		console.log("showList() 메서드 호출 list = " + page);

		replyService.getList({bno : bnoValue, page : page || 1},function(replyCnt, list) {

		console.log("replyCnt = "+ replyCnt);
		console.log("list = " + list);

		if (page == -1) {
			pageNum = Math.ceil(replyCnt / 10.0);
			showList(pageNum);
			return;
		}
	
		var str = "";
		if (list == null || list.length == 0) {
			replyUL.html("");
			return;
		}
			
		for (var i = 0, len = list.length || 0; i < len; i++) {
			str += "<li class='left clearfix' data-rno='"+list[i].rno+"'>";
			str += "  <div><div class='header'><strong class='primary-font'>" + list[i].replyer + "</strong>";
			str += "     <small class='pull-right text-muted'>" + replyService.displayTime(list[i].replyDate) + "</small></div>";
			str += "      <p>" + list[i].reply + "</p></div></li>";
		}
		replyUL.html(str);

		showReplyPage(replyCnt);
	
		});
	}

	var pageNum = 1;
	var replyPageFooter = $(".panel-footer");

	function showReplyPage(replyCnt) {
		var endNum = Math.ceil(pageNum / 10.0) * 10;
		var startNum = endNum - 9;
		var prev = startNum != 1;
		var next = false;

		if (endNum * 10 >= replyCnt) {
			endNum = Math.ceil(replyCnt / 10.0);
		}

		if (endNum * 10 < replyCnt) {
			next = true;
		}
		
		var str = "<div><ul class = 'pagination pull-right'>";
		
		if (prev) {
			str += "<li class='page-item'><a class='page-link' href='"
				+ (startNum - 1)
				+ "'>Previous</a></li>";
		}
		for (var i = startNum; i <= endNum; i++) {
			var active = pageNum == i ? "active" : "";
			str += "<li class='page-item "+active+"'><a class='page-link' href='"+i+"'>"
				+ i + "</a></li>";
		}
		
		if (next) {
			str += "<li class='page-item'><a class='page-link' href='"
				+ (endNum + 1) + "'>Next</a></li>";
		}
		
		str += "</ul></div>";
		console.log(str);
		replyPageFooter.html(str);
	}

	replyPageFooter.on("click", "li a", function(e) {
		e.preventDefault();
		console.log("page click");
		
		var targetPageNum = $(this).attr("href");
		
		console.log("targetpageNum = " + targetPageNum);
		pageNum = targetPageNum;
		showList(pageNum);
	});

	var modal = $(".modal");
	var modalInputReply = modal.find("input[name='reply']");
	var modalInputReplyer = modal.find("input[name='replyer']");
	var modalInputReplyDate = modal.find("input[name='replyDate']");
	
	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalRegisterBtn = $("#modalRegisterBtn");
	
	$("#addReplyBtn").on("click", function(e) {
		modal.find("input").val("");
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id !='modalCloseBtn']").hide();

		modalRegisterBtn.show();
		
		$(".modal").modal("show");
	});
   
   	modalRegisterBtn.on("click", function(e) {
		var reply = {
				reply:modalInputReply.val(),
				replyer:modalInputReplyer.val(),
				bno:bnoValue
		};
		
		replyService.add(reply, function(result) {
			
			alert(result);
			
			modal.find("input").val("");
			modal.modal("hide");

			showList(-1);
			

		});
	});
 
    $(".chat").on("click", "li", function(e) {
		var rno = $(this).data("rno");
		
		replyService.get(rno, function(reply) {
			alert(rno);
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly", "readonly");
			
			modal.data("rno", reply.rno);
			modal.find("button[id !='modalCloseBtn']").hide();
			
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
			
		});
	});
    
    modalModBtn.on("click", function(e) {
		var reply = {rno:modal.data("rno"),
					reply:modalInputReply.val()};
		replyService.update(reply, function(result) {
			alert(replyer + "수정완료");
			modal.modal("hide");
			
			showList(pageNum);
		});
	});
 	
    modalRemoveBtn.on("click", function(e){
		
    	var rno = modal.data("rno");
		replyService.remove(rno, function(result) {
			alert(result);
			modal.modal("hide");
			showList(pageNum);
		});
    });
});	
</script>

<script type="text/javascript">
$(document).ready(function() {

	var operForm = $("#operForm");
	
	$("a[data-oper='modify']").on("click", function(e) {
		operForm.attr("action", "/board/modify").submit();
	});

	$("a[data-oper='list']").on("click", function(e) {
		operForm.find("#bno").remove();
		operForm.attr("action", "/board/list")
		operForm.submit();
	});
});
</script>
            
            
            
            
<%@ include file="../includes/footer.jsp" %>