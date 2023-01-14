<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	$(function(){
		$("input[name=agreeAll]").click(function(){
			$("input[name=agree1]").prop("checked", this.checked);
			$("input[name=agree2]").prop("checked", this.checked);
			});
		});
	</script>
	<style>
	h4{font-size:bold;}
	  .card-text{
	    overflow: auto;
        height: 100px;
	  }
	</style>
</head>
<body>
  <div class="container">
	<form role="form" action="user_insert.do" method="post">
	  <div class="card w-100 p-5 mt-3 justify-content-lg-center align-items-lg-center">
		<div class="form-group">
		  <div class="card-header"><h3>회원가입 약관</h3></div>
			<div class="card-body">
			  <div class="col-lg-12">
				<div class="card w-100 p-5">
				  <h5 class="card-title">전자상거래 표준약관</h5>
				<p class="card-text">
					제1조(목적) 본 회원약관은 OOOO-업체명(이하 '갑'라 한다)이 운영하는 인터넷관련 서비스(이하 '서비스'라
					한다)를 이용함에 있어 관리자와 이용자(이하 '회원'라 한다)의 권리, 의무 및 책임사항을 규정함을 목적으로
					한다.<br> 제2조 (약관의 효력) 1.본 약관은 '갑'에 회원 가입 시 회원들에게 통지함으로써 효력을
					발생합니다. 2.'갑'은 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는
					통지함으로써 효력을 발생합니다. 3.약관의 변경사항 및 내용은 '갑'의 홈페이지에 게시하는 방법으로 공시합니다.<br>
					제3조 (약관 이외의 준칙) 이 약관에 명시되지 않은 사항이 전기 통신 기본법, 전기통신 사업법, 기타 관련
					법령에 규정되어 있는 경우 그 규정에 따릅니다.<br> 제4조 (이용계약의 체결) 회원 가입 시 회원
					약관 밑에 있는 동의버튼을 누르면 약관에 동의하여 이 계약이 체결된 것으로 간주한다. <br>제5조
					(용어의 정의) 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 1.회원: '갑'과 서비스 이용에 관한
					계약을 체결한 자 2.아이디(ID): 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 '갑'이 승인하는
					문자와 숫자의 조합 3.비밀번호: 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합 <br>제6조
					(이용신청) 1.회원 가입은 온라인으로 가입신청 양식에 기록하여 '갑'에 제출함으로써 이용신청을 할 수 있습니다.
					2.가입희망 회원은 반드시 자신의 본명 및 핸드폰번호로 이용신청을 하여야 하며, 1개의 ID만 신청을 할 수
					있습니다.
				</p>
				 </div>
			    </div>
				  <label class="checkbox-inline">   
					<input type="checkbox" name="agree1" value="true" required="required"> 동의합니다.
				  </label>    
		      </div>
			<div class="card-body">
				<div class="col-lg-12">
					<div class="card w-100 p-5">
						<h4 class="card-title">개인정보</h4>
						<!-- <div class="panel-body" style="border:  1px solid  #ccc"> -->
						<p class="card-text">
							<tripOnplan>('http://triponplan.ga')은(는) 「개인정보 보호법」
							제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여
							다음과 같이 개인정보 처리방침을 수립·공개합니다. ○ 이 개인정보처리방침은 2022년 10월 21부터 적용됩니다.
							<br>
							제1조(개인정보의 처리 목적) <tripOnplan>('http://triponplan.ga')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의
							용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등
							필요한 조치를 이행할 예정입니다. 1. 홈페이지 회원가입 및 관리 회원 가입의사 확인, 회원제 서비스 제공에 따른
							본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동의 개인정보 처리 시 법정대리인의
							동의여부 확인, 각종 고지·통지 목적으로 개인정보를 처리합니다. <br>
							2. 민원사무 처리 민원사항 확인, 처리결과 통보 목적으로 개인정보를 처리합니다. <br>
							3. 재화 또는 서비스 제공 서비스 제공, 요금결제·정산을 목적으로 개인정보를 처리합니다. <br>
							4. 마케팅 및 광고에의 활용 서비스의 유효성 확인 등을 목적으로 개인정보를 처리합니다. 
						</p>
					</div>
				</div>
						<label class="checkbox-inline">   
							<input type="checkbox" name="agree2" value="true" required="required"> 동의합니다.
						</label>  
			</div>
				<label class="checkbox-inline">   
							<input type="checkbox" name="agreeAll" id="agreeAll" value="true" required="required"> 전체 동의합니다.
						</label>  
		  </div>
			<button type="submit" class="btn btn-default">회원가입 단계로 넘어가기</button>
		</div>
		<br/>         
	</form>
 </div>
</body>
</html>