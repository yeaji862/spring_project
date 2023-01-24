<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.springbook.biz.user.UserVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="header.jsp"%>

<!doctype html>
<html lang="ko">
<title>정보 수정</title>
<style>
input {
	width: 500px;	
	height: 45px;
	border-radius: 15px;
	border: 1px solid #aaa;
	padding: 12px;
	margin-top: 10px;
}

input#btnDelete {
	margin: 10px;
}

.submitbutton {
	/* 	margin: 10px 5px; */
	color: white;
	border-radius: 7px;
	background-color: #19558c;
	border: none;
	width: 130px;
	margin-top: 30px;
}
</style>
</head>
<body class="info-body">
	<script>
		$(document).ready(function() {
			$("#btnUpdate").click(function() {
				// 확인 대화상자    
				if (confirm("수정하시겠습니까?")) {
					document.manage_userInfo.action = "manage_userUpdate.do";
					document.manage_userInfo.submit();
				}
			});
		});
		$(document).ready(function() {
			$("#btnDelete").click(function() {
				// 확인 대화상자 
				if (confirm("삭제하시겠습니까?")) {
					document.manage_userInfo.action = "manage_userDelete.do";
					document.manage_userInfo.submit();
				}
			});
		});
		
	</script>

	<div class="wrapper">
		<div class="sidebar" data-color="purple">
			<!-- data-color="purple | blue | green | orange | red" -->
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="manage_main.do" class="simple-text"> Trip 3.0 </a>
				</div>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="manage_main.do">
							<i class="nc-icon nc-chart-pie-35"></i>Dashboard
					</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="manage_userList.do"> <i class="nc-icon nc-circle-09"></i>회원
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_roomList.do"> <i class="nc-icon nc-istanbul"></i>숙소
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_hostList.do"> <i class="nc-icon nc-satisfied"></i>호스트
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_faqList.do"> <i class="nc-icon nc-single-copy-04"></i>공지사항
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_plannerList.do"> <i class="nc-icon nc-map-big"></i>플래너
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_reservList.do"> <i class="nc-icon nc-money-coins"></i>예약
							관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="qna_admin_list.do"> <i class="nc-icon nc-send"></i>문의 응답
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg " color-on-scroll="500">
				<div class="container-fluid">
					<a class="navbar-brand"> 회원 관리 </a>
					<button href="" class="navbar-toggler navbar-toggler-right"
						type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">

						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<span class="no-icon">${manage_id}님 접속중</span>
							</a></li>
<!-- 							<li class="nav-item"><a class="nav-link" href="#pablo"> -->
<!-- 									<span class="no-icon">Account</span> -->
<!-- 							</a></li> -->
							<li class="nav-item"><a class="nav-link"
								href="manage_logout.do"> <span class="no-icon">Log
										out</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->


			<div class="content">
				<div class="container-fluid">
					<div class="userInfo-div1">회원정보</div>
					<hr class="userInfo-hr">

					<form name="manage_userInfo" id="manage_userInfo" method="post">
						<table class="userInfo-table container">
							<tr>
								<th class="userInfo-th">아이디</th>
								<td><input name="user_id" value="${UserVO.user_id}"
									readonly></td>
							</tr>
							<tr>
								<th class="userInfo-th">이름</th>
								<td><input name="user_name" value="${UserVO.user_name}" required="required"></td>
							</tr>
							<tr>
								<th class="userInfo-th">비밀번호</th>
								<td><input type="password" name="user_password"
									value="${UserVO.user_password}"></td>
							</tr>
<!-- 							<tr> -->
<!-- 								<th class="userInfo-th">생년월일</th> -->
<!-- 								<td><input type="date" name="user_birth" -->
<%-- 									value="${UserVO.user_birth} required"></td> --%>
<!-- 							</tr> -->
							<tr>
								<th class="userInfo-th">성별</th>
								<td><input name="user_gender" value="${UserVO.user_gender}"></td>
							</tr>
							<tr>
								<th class="userInfo-th">이메일주소</th>
								<td><input name="user_email" value="${UserVO.user_email}"></td>
							</tr>
							<tr>
								<th class="userInfo-th">전화번호</th>
								<td><input name="user_phone" value="${UserVO.user_phone}"></td>
							</tr>
							<tr>
								<th class="userInfo-th">주소</th>
								<td><input name="user_address1"
									value="${UserVO.user_address1}"></td>
							</tr>
							<tr>
								<th class="userInfo-th">상세주소</th>
								<td><input name="user_address2"
									value="${UserVO.user_address2}"></td>
							</tr>
							<tr>
								<th class="userInfo-th">상태</th>
								<td><input name="user_status" value="${UserVO.user_status}"></td>
							</tr>
							<tr>
								<th class="userInfo-th">타입</th>
								<td><input name="user_type" value="${UserVO.user_type}"></td>
							</tr>
							<tr>
								<th></th>
								<td><input type="button" class="submitbutton" value="수정" id="btnUpdate"> 
									<input type="button" class="submitbutton" value="삭제" id="btnDelete"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>