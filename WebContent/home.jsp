<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>HIH home page</title>
    <link rel="stylesheet" href="./css/home_style.css">
</head>
<body>
<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		}
	%>
<!-- header section starts -->

<header id="header">
<nav class="nav justify-content-end">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link" href="home.jsp">Home</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">special</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">dishes</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">about</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">Logout</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#"><i class="far fa-user"></i> ${username }</a>
		  </li>
		</ul>
	</nav>



<a href="#" class="logo"><img src="./media/logo3.png" alt=""></a>

</header>

<!-- header section ends -->


<!-- home section starts  -->

<section id="home" class="container-fluid">

<div class="row min-vh-100 align-items-center">

<div class="col-md-8 ml-md-5 text-md-left text-center content">
    <h1>Health In Hand</h1>
    <h2>Order your Favorite Food</h2>
    <p>Your food is just one click away</p>
    <a href="#special"><button>get started</button></a>
</div>

</div>

</section>

<!-- home section ends  -->


<!-- special card section starts  -->

<section id="special" class="container-fluid">

<div class="heading text-center">
<h1>our <span>special</span></h1>
<p>Customize your food according to your taste and diet</p>
</div>


<div class="card-container">

    <div class="card">
        <img src="./media/diet3.jpg" alt="">
        <p>Customize your Burger</p>
        <a href="#"><button>Customize</button></a>
    </div>

    <div class="card">
        <img src="./media/diet1.jpg" alt="">
        <p>Customize your Meal.</p>
        <a href="#"><button>Customize</button></a>
    </div>

    <div class="card">
        <img src="./media/diet5.jpg" alt="">
        <p>Customize your Shake</p>
        <a href="#"><button>Customize</button></a>
    </div>

</div>

</section>

<!-- special card section ends  -->




<!-- dish section starts  -->

<section id="dish" class="container">

    <div class="heading text-center">
        <h1>our <span>dishes</span></h1>
    </div>

    <div class="box-container">

        <div class="box">
            <img src="./media/dish1.jpg" alt="">
            <div class="info">
                <h3>dish1</h3>
                <p>Pasta.</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

        <div class="box">
            <img src="./media/dish2.jpg" alt="">
            <div class="info">
                <h3>dish2</h3>
                <p>Shakes</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

        <div class="box">
            <img src="./media/dish3.jpg" alt="">
            <div class="info">
                <h3>dish3</h3>
                <p>Burger</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

        <div class="box">
            <img src="./media/dish4.jpg" alt="">
            <div class="info">
                <h3>dish4</h3>
                <p>pizza</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

        <div class="box">
            <img src="./media/dish5.jpg" alt="">
            <div class="info">
                <h3>dish5</h3>
                <p>Starters</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

        <div class="box">
            <img src="./media/dish6.jpg" alt="">
            <div class="info">
                <h3>dish6</h3>
                <p>cake</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

        <div class="box">
            <img src="./media/dish7.jfif" alt="">
            <div class="info">
                <h3>dish7</h3>
                <p>Biryani</p>
                <a href="#"><button>Order Now</button></a>
            </div>
        </div>

    </div>

</section>

<!-- dish section ends  -->


<!-- about section starts  -->

<section id="about" class="container">

    <div class="heading text-center">
    <h1><span>about</span> us</h1>
    </div>
        <div class="row min-vh-100">
        <div class="col-md-6 text-center text-md-left align-self-center content">
            <p>Master Chef : Swaroop</p>
            <p>Master Chef: Varun</p>
            <a href="#"><button>learn more</button></a>
        </div>
</div>
</section>
<!-- about section ends  -->

<!-- contact section starts  -->
<section id="contact" class="container-fluid">
    <div class="heading text-center">
        <h1><span>contact</span> us</h1>
    </div>

    <div class="row justify-content-center">

        <form action="" class="col-md-7">

            <div class="inputBox">
                <input type="text" required>
                <h3>full name</h3>
            </div>

            <div class="inputBox">
                <input type="email" required>
                <h3>e-mail</h3>
            </div>

            <div class="inputBox">
                <textarea required name="" id="" cols="30" rows="10"></textarea>
                <h3>message</h3>
            </div>

            <input type="submit" value="send">

        </form>

    </div>

</section>

<!-- contact section ends  -->
<!-- script part starts  -->
<script src="https://kit.fontawesome.com/b15f1b8144.js" crossorigin="anonymous"></script>
<script>

$(document).ready(function(){

    $(window).on('scroll load',function(){
        if($(window).scrollTop() > 10){
            $('#header').addClass('header-active');
        }else{
            $('#header').removeClass('header-active');
        }
    });

});

</script>

</body>
</html>
