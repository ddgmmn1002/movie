<%@page import="vo.UserVO"%>
<%@page import="jdk.nashorn.internal.runtime.UserAccessorProperty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifying user information</title>
</head>
<body class="bg-dark">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container p-3 mt-5 mb-5 bg-light rounded">
		<form action="updateUser" method="post">
			<div class="d-grid gap-3">
				
				<div class="row">
					<div class="col">
						<div class="input-group">
							<label class="input-group-text">연락처</label>
							<select class="form-select" name="phone">
								<option value="010">010</option>
								<option value="051">051</option>
								<option value="02">02</option>
							</select>
							<input type="text" class="form-control" name="phone" value="${userInfo.getPhone().substring(4, 8) }">
							<input type="text" class="form-control" name="phone" value="${userInfo.getPhone().substring(9, 13) }">
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="input-group">
							<label class="input-group-text">Email</label>
							<input type="text" class="form-control" name="email" placeholder="이메일">
							<select name="email" class="form-select">
								<option value="@naver.com">naver.com</option>
								<option value="@daum.net">daum.net</option>
								<option value="@gmail.com">gmail.com</option>
							</select>					
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input type="text" class="form-control" name="pw" placeholder="비밀번호" value="${userInfo.getPw() }">
							<label>비밀번호</label>
						</div>
					</div>			
				</div>
				
				<div class="row">
					<div class="col">
						<div class="form-floating">
							<input type="text" class="form-control" name="nickname" placeholder="닉네임" value="${userInfo.getNickname() }">
							<label >닉네임</label>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col d-flex justify-content-end gap-2">
						<input type="submit" class="btn btn-outline-primary" value="회원 정보 수정하기">
						<a class="btn btn-outline-danger" href="home.jsp">취소</a>
					</div>
				</div>
				
			</div>
		</form>
		
	</div>
</body>
</html>