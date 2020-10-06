<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title>Insert title here</title>

<style type="text/css">
body {
	width: 100%;
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

#logreg-forms, .form-control {
	position: relative;
	box-sizing: border-box;
	height: auto;
	padding: 10px;
	font-size: 20px;
}

div form button p, i {
	font-size: 20px;
}

.title {
	font-size: 15px;
}
</style>

</head>

<body>

	<div class="loading"></div>

	<div id="logreg-forms">

		<h1 style="text-align: center" class="title">감사합니다!</h1>
		<h1 style="text-align: center" class="title">방문자 정보</h1>
		<hr>
		<p id="name" style="text-align: center">${name }</p>
		<p id="tel" style="text-align: center">${tel }</p>
		<p id="address" style="text-align: center">${address }</p>

	</div>

</body>

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

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.22.1/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.22.1/firebase-analytics.js"></script>

<script src="https://www.gstatic.com/firebasejs/7.22.1/firebase-database.js"></script>

<script>
	// Your web app's Firebase configuration
	// For Firebase JS SDK v7.20.0 and later, measurementId is optional
	var firebaseConfig = {
		apiKey : "AIzaSyARqYsbPHL69SknVCBPfe4P2wQdEzS-87Q",
		authDomain : "jetson-fire.firebaseapp.com",
		databaseURL : "https://jetson-fire.firebaseio.com",
		projectId : "jetson-fire",
		storageBucket : "jetson-fire.appspot.com",
		messagingSenderId : "344921375719",
		appId : "1:344921375719:web:53387036b28271c4eef342",
		measurementId : "G-1KCJYRGGEE"
	};
	// Initialize Firebase
	firebase.initializeApp(firebaseConfig);
	firebase.analytics();

	// getting the text value from the database

	var name = document.getElementById('name').innerHTML;
	var tel = document.getElementById('tel').innerHTML;
	var address = document.getElementById('address').innerHTML;

	var data = [ name, tel, address ];

	var dbRef = firebase.database().ref().child('QR_Data');

	dbRef.on("value", function(snapshot) {

		dbRef.set(data)

	}, function(error) {
		console.log("Error: " + error.code);
	});
</script>

</html>