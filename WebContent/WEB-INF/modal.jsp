<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.modal {
		position: absolute;
		top: 0;
		left: 0;
		
		width: 100%;
		height: 100%;
		
		display: none;
		
		backgournd-color: rgba(0, 0, 0, 0.4)
	}
	.modal.show {
		display: block;
	}
	.modal_body {
		position: absolute;
		top: 50%;
  		left: 50%;

  		width: 400px;
  		height: 600px;

  		padding: 40px;

  		text-align: center;

  		background-color: rgb(255, 255, 255);
  		border-radius: 10px;
  		box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

  		transform: translateX(-50%) translateY(-50%);
	}
</style>
</head>
<body>
	<div class="modal">
		<div class="modal-body">
			Modal
		</div>
	</div>
</body>
</html>