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

.main{
	margin: 5% 15% 0 15%;
}
.title{
	font-weight: 600;
	margin-bottom: 20px;
}
.content{
    margin-top: 50px;
    white-space:pre;
}
.back{
	margin-bottom: 40px;
    cursor: pointer;
    color: #616161;
    font-weight: 350;
    display: inline-block;
}

</style>
<body class="d-flex flex-column min-vh-100">

<div class="main">
 		<h2 class="title">${faq.faq_title}</h2>
 		<p style="font-size:18;">${faq.faq_regdate} 작성자 : ${faq.faq_writer}</p>
 		<hr>
 		<div class="content"><p style="width:100%">${faq.faq_content}<p></div>
 		<br>
 		<hr>
 		<span onclick="location.href='getFaqList.do';" class="back"><a style="color:#cdcdcd">&lt;&lt; </a> 목록으로돌아가기</span>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
