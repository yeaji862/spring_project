<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%
String sts = "";
if (session.getAttribute("userId") == null) {
	sts = "disabled";
}
%>
<style>
.wihe{
	width: 90%;
    height: 40px;
    background-color: white;
}

#comment{
	width: 90%;
    height: 550px;
    resize: none;
    background-color: white;
}


</style>
<body>

<div style="margin-left:30%; margin-right:30%;">
	<div class="jumbotron" style="background-color: transparent; padding:30px 0 0 0 " >
		<h1>상세 보기</h1>
	</div>
	<div class="container-fluid">

		<form name="fm" action="updateFaq.do" method="post">
			<input type="hidden" name="faq_no" value="${faq.faq_no}">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" style="width:70px">제목</span>
				</div>
				<input type="text" name="faq_title" class="wihe"
					value="${faq.faq_title}" <%=sts %>>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" style="width:70px">작성자</span>
				</div>
				<%--       <input type="text" class="form-control innm" name="writer" value="${faq.writer}" readonly <%=sts %>>       --%>
				<input type="text" name="faq_writer" class="wihe"
					value="${faq.faq_writer}" readonly <%=sts %>>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" style="width:70px">내용</span>
				</div>
				<textarea  id="comment" name="faq_content" <%=sts%>>${faq.faq_content}</textarea>
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" style="width:70px">등록일</span>
				</div>
				<input type="text" name="faq_regdate" class="wihe"
					value="${faq.faq_regdate}" readonly <%=sts %>>
			</div>
		
		</form>
			<div id="footer" style="text-align: center;">
				<button type="button" class="btn btn-secondary" onclick="location.href='getFaqList.do';" style="background-color: #19558c;"> 목록으로 </button>
			</div>
	</div>

	</div>
</body>
</html>
