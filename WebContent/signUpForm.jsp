<%@page import="java.util.HashMap"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign up</title>
<script src="js/jquery-3.7.0.js"></script>
</head>
<body class="bg-dark">
<jsp:include page="header.jsp"></jsp:include>
	<div class="container p-5 mt-5 mb-5 bg-light rounded">
	
		<form action="signUp" method="post" id="signup-form" data-duplicateCheck="fail">
			<div class="d-grid gap-3">
				
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input class="form-control" type="text" name="name" id="name" placeholder="이름">
							<label for="name">이름</label>
						</div>
					</div>			
				</div>
				
				<div class="row">
					<div class="col">
						<div class="input-group">
							<span class="input-group-text">생년월일</span>
							<input class="form-control" type="text" name="birth" placeholder="연도">
							<input class="form-control" type="text" name="birth" placeholder="월">
							<input class="form-control" type="text" name="birth" placeholder="일">
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="input-group">
							<span class="input-group-text">연락처</span>
							<select class="form-select" name="phone">
								<option value="010">010</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="02">02</option>
							</select>		
							<input class="form-control" type="text" name="phone">
							<input class="form-control" type="text" name="phone">
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="input-group">
							<span class="input-group-text">Email</span>
							<input class="form-control" type="text" name="email">
							<span class="input-group-text">@</span>
							<select class="form-select" name="email">
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="gmail.com">gmail.com</option>
							</select>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col d-flex gap-4">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender" value="m" id="male">
							<label class="form-check-label" for="male">남성</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender" value="f" id="female">
							<label class="form-check-label" for="female">여성</label>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col d-grid gap-1">
						<div class="form-floating">
							<input class="form-control" type="text" id="id" name="id" placeholder="ID">
							<label for="id">ID</label>
						</div>
						<div class="d-flex justify-content-end">
							<button class="btn btn-secondary btn-sm" id="id-check">중복 검사</button>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input class="form-control" type="text" class="input-text" id="pw" name="pw" placeholder="비밀번호">
							<label for="pw">비밀번호</label>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input class="form-control" type="text" id="nickname" name="nickname" placeholder="닉네임">
							<label for="nickname">닉네임</label>
						</div>
					</div>
				</div>			
				
				<div class="row">
					<div class="col d-flex justify-content-end">
						<div>
							<input type="button" id="btn-submit" value="회원가입" class="btn btn-primary">
						</div>
					</div>
				</div>
				
			</div>
		</form>
		
	</div>
<script src="js/signUpForm_idCheck.js"></script>
</body>
</html>
