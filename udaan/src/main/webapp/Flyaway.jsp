<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>FlyAway - Airline Booking Portal</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap')
	;

body {
	background-image: url('airplane_background.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	font-family: 'Poppins', sans-serif;
	background-color: rgba(115, 194, 251, 0.5);
}

.navbar {
	background-color: #2975f0;
	font-family: 'Poppins', sans-serif;
}

.navbar .navbar-brand {
	color: white;
	font-size: 24px;
	font-family: 'Poppins', sans-serif;
}

.navbar .nav-link {
	color: white;
	font-size: 18px;
	margin-right: 15px;
	font-family: 'Poppins', sans-serif;
}

.navbar .nav-link:hover {
	color: white;
}

h1 {
	text-align: center;
	color: #1565C0;
	margin-top: 50px;
	font-family: 'Poppins', sans-serif;
	text-shadow: 2px 2px 4px #000000;
}

.carousel-item img {
	height: 300px;
	object-fit: cover;
	width: 100%;
}

.carousel-caption {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	font-family: 'Poppins', sans-serif;
	color: #fff;
	text-shadow: 2px 2px 4px #000000;
}

p {
	text-align: center;
	color: #fff;
	text-shadow: 3px 3px 4px #000000;
	font-size: 18px;
	margin-top: 20px;
	font-family: 'Poppins', sans-serif;
}

.typed-cursor {
	opacity: 1;
	animation: blink 0.7s infinite;
	font-family: 'Poppins', sans-serif;
}

@
keyframes blink { 0% {
	opacity: 1;
}
50
%
{
opacity
:
0;
}
100
%
{
opacity
:
1;
}
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand" href="#">Udaan</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="UserRegistration.jsp" style="color: white">User
						Registration</a></li>
				<li class="nav-item"><a class="nav-link" href="UserPage.jsp"
					style="color: white">Booking Ticket</a></li>
				<li class="nav-item"><a class="nav-link" href="AdminPage.jsp"
					style="color: white">Admin Login</a></li>
			</ul>
		</div>
	</nav>

	<h1>
		<span id="typed-text" style="color: #2975f0;"></span><span
			class="typed-cursor">|</span>
	</h1>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" data-interval="3000">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="carousel1.jpg" class="d-block w-100" alt="Slide 1">
				<div class="carousel-caption">
					<h3 style="color: #fff;">Book Your Next Adventure</h3>
					<p>Discover exciting destinations and plan your dream vacation.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="carousel2.jpg" class="d-block w-100" alt="Slide 2">
				<div class="carousel-caption">
					<h3 style="color: #fff;">Enjoy Hassle-Free Travel</h3>
					<p>Experience smooth and comfortable flights to your desired
						location.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="carousel3.jpg" class="d-block w-100" alt="Slide 3">
				<div class="carousel-caption">
					<h3 style="color: #fff;">Discover New Cultures</h3>
					<p>Immerse yourself in diverse cultures and create
						unforgettable memories.</p>
				</div>
			</div>
		</div>
	</div>

	<p id="second-typed-text"
		style="color: #fff; text-shadow: 4px 4px 4px #000000;"></p>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
        const texts = 'Explore the World with Udaan';
        let count = 0;

        function type() {
            if (count < texts.length) {
                document.getElementById('typed-text').innerHTML += texts.charAt(count);
                count++;
                setTimeout(type, 200);
            } else {
                setTimeout(() => {
                    document.getElementById('typed-text').innerHTML = '';
                    count = 0;
                    type();
                }, 2000);
            }
        }

        type();

        const secondText = 'Get ready for an unforgettable journey with FlyAway!';
        let secondCount = 0;

        function typeSecond() {
            if (secondCount < secondText.length) {
                document.getElementById('second-typed-text').innerHTML += secondText.charAt(secondCount);
                secondCount++;
                setTimeout(typeSecond, 200);
            } else {
                setTimeout(() => {
                    document.getElementById('second-typed-text').innerHTML = '';
                    secondCount = 0;
                    typeSecond();
                }, 2000);
            }
        }

        typeSecond();
    </script>

</body>

</html>
