<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

<div class="commu-title">
	<div>
	    <h1 class="page-header">커뮤니티 게시판</h1>
	</div>
</div>

<div class="panel-body">
	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
		<button id="regBtn" type="button" class="btn btn-xs pull-right">Register</button>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="board">
			<tr>
				<td>
					<c:out value="${board.bno}" />
				</td>
				<td>							
					<a class="move" href="<c:out value="${board.bno}" />">
						<c:out value="${board.title}" /><b>[<c:out value="${board.replyCnt}" />]</b>
					</a>
				</td>
				<td>
					<c:out value="${board.writer}" />
				</td>
				<td>
					<fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd" />
				</td>
				<td>
					<fmt:formatDate value="${board.updateDate}" pattern="yyyy-MM-dd" />
				</td>
			</tr>
		</c:forEach>
	</table>
	<!-- table 태그의 끝! -->
	
	<div class="row">
		<div class="col-lg-12">
			<div class="search-wrap">
				<form action="/board/list" method="get" id="searchForm">
					<select class="board-searchForm" name="type">
						<option value=""
							<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--
						</option>
						<option value="T" 
							<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목
						</option>
						<option value="C" 
							<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용
						</option>
						<option value="W" 
							<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자
						</option>
						<option value="TC" 
							<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목 또는 내용
						</option>
						<option value="TW" 
							<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목 또는 작성자
						</option>
						<option value="TWC" 
							<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목 또는 내용 또는 작성자
						</option>
					</select>
					<input class="board-search" type="text" name="keyword"
							placeholder="내용을 입력해 주세요" style="padding-left: 10px;"
							value="<c:out value="${pageMaker.cri.keyword}" />" />
					<input name="pageNum" type="hidden" value="<c:out value="${pageMaker.cri.pageNum}" />" />
					<input name="amount" type="hidden" value="<c:out value="${pageMaker.cri.amount}" />" />
					<button class="board-search-btn">Search</button>
				</form>
			</div>
		<div class="pull-right">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li class="paginate_button previous"><a href="${pageMaker.startPage - 1}">Previous</a></li>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active" : ""}"><a href="${num}">${num}</a></li>		
				</c:forEach>
				<c:if test="${pageMaker.next}">				
					<li class="paginate_button next"><a href="${pageMaker.endPage + 1}">Next</a></li>
				</c:if>
			</ul>
		</div>
				
		<form id="actionForm" action="/board/list" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<input type="hidden" name="type" value="<c:out value="${pageMaker.cri.type}"/>">
			<input type="hidden" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>">
		</form>
						
		<!-- 댓글 Modal 시작 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">처리가 완료되었습니다!</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save changes</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.panel-body -->

<script type="text/javascript">
	$(document).ready(
		function() {
			var result = '<c:out value="${result}"/>';

			checkModal(result);
			history.replaceState({}, null, null);

		function checkModal(result) {
			if (result === '') {
				return;
			}
			if (parseInt(result) > 0) {
				$(".modal-body").html(
					"게시글" + parseInt(result) + "번이 등록되었습니다!");
			}
			$("#myModal").modal("show");
		}

		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});
				
		var actionForm = $("#actionForm");
				
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
				
		$(".move").on("click", function(e) {
			e.preventDefault();
			
			actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
			actionForm.attr("action", "/board/get");			
			actionForm.submit();
		});
				
		var searchForm = $("#searchForm");
				
		$("#searchForm button").on("click", function(e) {
			
			if(!searchForm.find("option:selected").val()){
				alert("검색 종류를 선택하세요");
				return false;
			}
			
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			
			searchForm.submit();
		});
				
	});
</script>

<%@ include file="../includes/footer.jsp"%>

