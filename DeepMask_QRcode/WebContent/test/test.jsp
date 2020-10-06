<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title>QRcode_test</title>

<style type="text/css">
body {
	width: 95%;
	height: 100%;
	background: #96dfd8;
	margin: auto;
}

.loading {
	width: 100%;
	height: 100%;
	position: fixed;
	left: 0px;
	top: 0px;
	background: #fff;
	z-index: 9999; /* 이 값으로 레이어의 위치를 조정합니다. */
}

#logreg-forms {
	margin: 50% auto;
	height: 95%;
	background-color: white;
}

#logreg-forms form {
	width: 100%;
	padding: 15px;
	margin: auto;
}

#logreg-forms, .form-control {
	position: relative;
	box-sizing: border-box;
	height: auto;
	padding: 10px;
	font-size: 15px;
}

#logreg-forms .form-control:focus {
	z-index: 2;
}

input {
	margin-bottom: 10px;
}

#btn-signin {
	background-color: #96dfd8;
	color: white;
}

div form button p{
	font-size: 20px;
}
</style>

</head>

<body>

	<div class="loading"></div>

	<div id="logreg-forms">

		<form class="form-signin" action="../transfer" method="post">
			<p style="text-align: center" id="title">전자 출입 명부</p>

			<input name="name" type="id" id="inputName" class="form-control" placeholder="이름을 입력하세요" required="" autofocus="">
			<input name="tel" type="id" id="inputTel" class="form-control" placeholder="전화번호를 입력하세요" required="">
			<input name="address" type="id" id="inputAdd" class="form-control" placeholder="거주지 주소를 입력하세요" required="">
			<!-- placeholder : 사용자 안내문구 / required : 필수값을 입력하지 않으면 메세지 보여줌 / autofocus : 페이지가 로드될때 자동으로 input요소에 포커스 이동-->

			<button class="btn btn-block" type="submit" id="btn-signin">
				<p style="text-align: center">출입자 정보 등록</p>
			</button>
		</form>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(window).on('load', function() {
			$(".loading").fadeOut(500);
		});
	</script>

</body>

</html>