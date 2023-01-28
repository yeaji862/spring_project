<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기/비밀번호찾기</title>
<script>

	//휴대폰
	$(function() {
		//휴대폰 번호 인증 
		var code2 = "";
		$("#phoneChk").click(
				function() {
					var phone = $("#phone").val();
					var phone_pattern = /^010-?([0-9]{4})-?([0-9]{4})$/;
					if($("#phone").val() == ""){
	            		alert("전화번호를 입력해주세요");
	            		return false;
	            	}
	            	if(phone_pattern.test($("#phone").val()) == false){
	            		alert("전화번호를 올바르게 입력해주세요");
	            		return false;
	            	}
					$.ajax({
						type : "GET",
						url : "phoneCheck.do?phone=" + phone,
						cache : false,
						success : function(data) {
							if (data == "error") {
								/* alert("휴대폰 번호가 올바르지 않습니다.")
								$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
								$(".successPhoneChk").css("color", "red");
								$("#phone").attr("autofocus", true); */
							} else {
								alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
								$("#phone2").attr("disabled", false);
								$("#phoneChk2").css("display", "inline-block");
								$("#phone").attr("readonly", true);
								code2 = data;
							}
						}
					});
				});

		$("#phoneChk2").click(

				function() {
					var phoneCheck = $("#phone2").val();
					if (phoneCheck == "") {
						alert("인증번호를 입력하지 않았습니다.");
					} else if ($("#phone2").val() == code2) {
						$('#user_findform').submit();

					} else {
						// 						$(".successPhoneChk").text(
						// 								"인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
						// 						$(".successPhoneChk").css("color", "red");
						alert("인증번호가 일치하지 않습니다.");
						$("#phoneDoubleChk").val("false");
						$(this).attr("autofocus", true);
						//location.href = "user_find.do";
					}
				});

	});


	function phoneconfig() {
		$('#config1').show();
		$('#config').hide();
	}
	
</script>
<style>
#emailconfig, #phoneconfig {
	color: white;
	border-radius: 7px;
	width: 100px;
	height: 40px;
	background-color: #ff8e15;
	border: none;
}

#emailconfig:hover, #phoneconfig:hover {
	background-color: #ff8e15;
	color: white;
}

.config_div {
	text-align: center;
}
/* 아이디찾기 텍스트 */
.idfind {
	font-size: 40px;
	background-color: #ff8e15;
	border-radius: 15px;
	padding: 5px 20px;
	color: white;
	box-sizing: border-box;
}
/* 아이디찾기 인증배경 */
.login_back {
	padding: 25px;
	border: 5px solid #19558c;
	width: 90%;
	margin: 25px auto;
	text-align: center;
	border-radius: 8px;
	height: 350px;
}
/* 이메일,전화번호 인증버튼 */
#emailconfig, #phoneconfig {
	width: 180px;
}
/* 이메일인증 인풋창,전화번호인증 인풋창 */
input#email, #emailCheck, input#phone, input#phone2 {
	width: 380px;
	height: 45px;
	border-radius: 15px;
	margin: 15px;
	border: 1px solid #aaa;
	padding: 12px;
}
/* 이메일인증버튼,전화번호버튼 */
#sendMail, #check, #phoneChk, #phoneChk2, .modal_btn {
	margin: auto 0;
	color: white;
	border-radius: 7px;
	background-color: #ff8e15;
	border: none;
	width: 90px;
	height: 35px;
}

.look_btn {
	margin: auto 0;
	color: white;
	border-radius: 7px;
	background-color: #ff8e15;
	border: none;
	width: 150px;
	height: 35px;
}
</style>
</head>
<body
	style="padding-top: 57px; background-color: #f9fcff; height: 100vh">
	<div class="vh">

		<div class="container mx-auto" id="container">
			<br> <br>
			<div class="idfind">
			<% if(request.getAttribute("ca") != null){ %>
			<% if(request.getAttribute("ca").equals("id")){ %>
			아이디 찾기
			<% } %>
			<% if(request.getAttribute("ca").equals("pw")){ %>
			비밀번호 찾기
			<% } %>
			<% } %>
			</div>
			<hr style="border: solid 1px #19558c;">

			
			<% if(request.getAttribute("ca") != null){ %>
			<% if(request.getAttribute("ca").equals("id")){ %>
			<form action="user_findform.do" method="post" id="user_findform">
				<input type="hidden" name="user_phone" id="user_phone"> <input
					type="hidden" name="user_email" id="user_email">
			</form>
			<% } %>
			<% if(request.getAttribute("ca").equals("pw")){ %>
			<form action="user_pwfindform.do" method="post" id="user_findform">
				<input type="hidden" name="user_phone" id="user_phone"> <input
					type="hidden" name="user_email" id="user_email">
			</form>		
			<% } %>
			<% } %>
			

			<div class="login_back">
				
					<h4 style="margin-top: 30px;">전화번호 인증</h4>
					<div class="row">
						<div class="col-3"></div>
						<input id="phone" type="text" name="phone" title="전화번호 입력"
							placeholder="전화번호 입력" />
						<button id="phoneChk" class="doubleChk">발송하기</button>
					</div>
					<div class="row">
						<br>
						<div class="col-3"></div>
						<input id="phone2" type="text" name="phone2" title="인증번호 입력"
							disabled />
						<button id="phoneChk2" class="doubleChk">인증확인</button>
						<input type="hidden" id="phoneDoubleChk" />
					</div>


			</div>
		</div>
	</div>

</body>
</html>