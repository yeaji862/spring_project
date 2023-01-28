<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기/비밀번호찾기</title>
<script>
<%
if (request.getAttribute("none") != null) {
%>
	alert("가입된 회원정보가 없습니다");
	history.back();
<% } %>
// 비밀번호 재확인
$(function() {
	$('#user_passwordCheck').focusout(function() {
		console.log($('#user_passwordCheck').val());
		if ($('#user_passwordCheck').val() != $('#user_password').val()) {
			alert("비밀번호재확인필요");

		} else {
			passwordCheck = true;
		}
	});
});
function change() {
	if (passwordCheck) {
		$('#pwchange').submit();
	}
}

$(function(){
	$('#changepwbtn').click(function(){

		$('#user_id').val($('input[name=list]:checked').val());
		
	});
});
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
#sendMail, #check, #phoneChk, #phoneChk2 {
	margin: auto 0;
	color: white;
	border-radius: 7px;
	background-color: #ff8e15;
	border: none;
	width: 90px;
	height: 35px;
}

#pwchange {
	display: flex;
	
	flex-flow: row wrap;
	
	gap: 5px;
	
	width: 100%;
	
	justify-content: center;
	
	margin-left: 15px;
	
	margin-right: 15px;
	
	margin-top: 15px;
}

#pwchange input {
	
	width: 190px;
    height: 45px;
    border-radius: 15px;
    border: 1px solid #aaa;
    padding: 12px;
    
}

#pwchange button,#changepwbtn,#c_pw {
	margin: 5px 10px;
	color: white;
	border-radius: 7px;
	background-color: #ff8e15;
	border: none;
	height: 35px;
	margin-top:30px;
}

.find_id {
	margin: 5px 10px;
	color: white;
	border-radius: 7px;
	background-color: #ff8e15;
	border: none;
	height: 35px;
}
</style>
</head>
<body
	style="padding-top: 57px; background-color: #f9fcff; height: 100vh">
	<div class="vh">

		<div class="container mx-auto" id="container">
			<br> <br>
			<div class="idfind">회원정보 찾기</div>
			<hr style="border: solid 1px #19558c;">


			<div class="login_back">
		
				<%
				if (request.getAttribute("user") != null) {
				%>
				<!-- The Modal -->
				<div >
					<div>
						<div>
							<%
					if (request.getAttribute("ca") != null) {
							%>
							<%
					if (request.getAttribute("ca").equals(1)) {
							%>
							<!-- 아이디 찾기 결과 -->
						 	<!-- Modal body -->
							<div class="modal-body">
								<c:forEach items="${user}" var="vo1">
									회원아이디 : ${vo1.user_id}<br>
								</c:forEach>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer" style="justify-content: center;">
								 <button type="button" class="find_id" onclick="location.href='user.login.do'">로그인하러가기</button>
								 <button type="button" class="find_id" onclick="location.href='user_pwfind.do'">비밀번호 찾기</button>
							</div> 
							<% } %>
							<%
					if (request.getAttribute("ca").equals(0)) {
							%>
							<!-- 비밀번호 찾기 결과 -->
									 <c:forEach items="${user}" var="vo1">
									<input type="radio" value="${vo1.user_id}" class="${vo1.user_id}" name="list">회원아이디 : ${vo1.user_id}<br>
									</c:forEach>
								<c:if test="${user ne null}">
									<button id="changepwbtn" data-toggle="modal" data-target="#myModal">비밀번호 변경하기</button>
								</c:if>
		<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">비밀번호변경</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       <div class="user_form" >
						<form action="user_change.do" id="pwchange" method="post">
						<input type="hidden" id="user_id" name="user_id">
							<div><input type="password" name="user_password" id="user_password"
								placeholder='비밀번호'></div>
								<div><input type="password"
								name="user_passwordCheck" id="user_passwordCheck"
								placeholder='비밀번호재확인'></div>
							<div></div>
						</form>
					</div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" id="c_pw" onclick="change()">변경하기</button>
      </div>

    </div>
  </div>
</div>
<% } %>
<!-- end -->
						</div>
					</div>
				</div>
				<%
				}}
				%>
				
			</div>
		</div>
		
	</div>

</body>
</html>