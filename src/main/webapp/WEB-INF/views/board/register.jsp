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
		<div class="panel panel-default">
			<div class="panel-body">
				<form action="/board/register" method="post" role="form">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="form-group">
						<label>제목</label>
						<input class="form-control" name="title">
					</div>
					<div class="form-group">
						<label>내용 입력</label>
						<textarea class="form-control" rows="3" name="content" ></textarea>
					</div>
					<div class="form-group">
						<label>작성자</label>
						<input class="form-control" name="writer" value="${USERID}">
					</div>
					<button type="submit" class="btn btn-default">지금 등록!</button>
					<button type="reset" class="btn btn-default">입력 취소!</button>
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
            
<%@ include file="../includes/footer.jsp" %>