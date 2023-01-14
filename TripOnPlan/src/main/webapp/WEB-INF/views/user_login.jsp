<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('b96ec8a7c96b4f5663ea3d19a4bbc885'); //발급받은 키 중 javascript키를 사용해준다.
	// console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(response) {
						var account = response.kakao_account;
						console.log(response);
						console.log(response.id);
						console.log(account.profile.nickname);
						console.log(account.email);
						if (account.email == null || account.email == '') {
							alert('이메일 동의 필수사항');
							kakaoLogout();
						} else {
							$('#kakao_id').val(response.id);
							$('#kakao_password').val(response.id);
							$('#kakao_email').val(account.email);
							$('#kakao_name').val(account.profile.nickname);
							document.querySelector('#kakao_form').submit();
						}
					},
					fail : function(error) {
						console.log(error);
					},
				})
			},
			fail : function(error) {
				console.log(error);
			},
		})
	}
	//카카오로그아웃  
	function kakaoLogout() {
		if (Kakao.Auth.getAccessToken()) {
			Kakao.API.request({
				url : '/v1/user/unlink',
				success : function(response) {
					console.log(response);
				},
				fail : function(error) {
					console.log(error);
				},
			})
			Kakao.Auth.setAccessToken(undefined);
		}
	}
<%if (request.getParameter("fail") != null) {%>
	alert("로그인실패");
<%}%>
	
</script>
<style>
/* 로그인버튼 */
.user_loginbutton {
	margin: auto 0;
	color: white;
	border-radius: 20px;
	background-color: #ff8e15;
	border: none;
	width: 300px;
	height: 40px;
	margin: 5px;
}

#user_id, #user_password {
	width: 300px;
	padding: 15px;
	margin: 5px;
	border-radius: 20px;
	height: 40px;
	border:1px solid #9c9c9c;
}


/* 로그인폼 */
.user_loginForm {
	text-align: center;
	margin-top: 150px;
}

/* 이미지크기 */
img {
	width: 180px;
	cursor: pointer;
}
/* a태그 밑줄 */
a.find , span.find{
	text-decoration: none;
	color: #9d9c9c;
}

a:hover{
color: #545454;
}

</style>
</head>
<body>

	<!-- 카카오로그인폼 -->
	<form action="kakao_loginform.do" id='kakao_form' method="post">
		<input name="user_id" id="kakao_id" type="hidden"> <input
			name="user_password" id="kakao_password" type="hidden"> <input
			name="user_name" id="kakao_name" type="hidden"> <input
			name="user_email" id="kakao_email" type="hidden">
	</form>
	<div class="user_loginForm">
		<!-- 회원로그인 -->
		<form action="user_loginform.do" method="post">
			<input name="user_id" id="user_id" placeholder=" 아이디"><br>
			<input type="password" name="user_password" id="user_password" placeholder=" 비밀번호"><br>
			<button class="user_loginbutton">로그인</button>
		</form>
		<br>
		<span class="find">
		<a class="find" href="user_find.do" id="1">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
			class="find" href="user_pwfind.do">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
			class="find" href="user_insert.do">회원가입</a></span><br><br>
		<br> <span> <img src="resources/img/kakao_account_login_btn_medium_narrow_ov.png"
			onclick="kakaoLogin()" class="kakao_img"><br>
			
		</span>

		<!-- 	<img src="../resources/img/kakao_icon.png"> 나중경로-->

	</div>
</body>
</html>