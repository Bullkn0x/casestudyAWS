<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>


<!DOCTYPE html>
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Vurteau</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png">
<link rel="icon" href="assets/img/favicon.ico">
<link rel='stylesheet' href='assets/css/bootstrap.min.css'>
<!-- bootstrap -->
<link rel='stylesheet' href='assets/css/vendor.css'>
<!-- plugin -->
<link rel='stylesheet' href='assets/css/lycanblue.css'>
<!-- edit to be red.css, orange.css, pink.css, yellow.css , purple.css, blue.css , brown.css, green.css -->
<link rel='stylesheet' href='assets/css/custom.css'>
<!-- custom style should place in this file -->
<!-- <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet"> -->

<link href="https://fonts.googleapis.com/css?family=Orbitron"
	rel="stylesheet">
<!-- tron-like fonts for site -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
<!--[if lte IE 9]><!-->
<script src='assets/js/vendor/html5shiv.min.js'></script>


</head>

<body>

	<div class="site-loader">
		<span></span>
		<p>Loading</p>
	</div>
	<!-- .site-loader -->


	<nav class="site-nav">
		<div class="site-nav__table">
			<div class="site-nav__cell">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12">
							<div class="site-nav__inner">
								<ul class="site-nav__menu">
									<li><a href="#" data-link="#home">Home</a></li>
									<li><a href="#" data-link="#transaction">Transaction</a></li>
									<li><a href="#" data-link="#customer">Transaction</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- site-nav -->

	<div class="site-wrap">
		<header class="site-header">
			<div class="container">
				<div class="site-header__logo">
					<a href="#" data-link="#home"> <img
						src="assets/img/cognizant_logo.png" alt="logo">
					</a>
				</div>
				<!-- .site-header__logo -->

				<ul class="site-header__icon">
					<li class="site-header__icon__nav"><a href="#"><i
							class="ion-android-menu"></i></a></li>
				</ul>
				<!-- .site-header__icon -->
			</div>
		</header>
		<!-- .site-header -->

		<main class="site-main">

		<div id="home" class="section is-active">
			<div class="section__table">
				<div class="section__cell">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-md-8 col-md-offset-2">
								<div class="overflow-hidden">
									<div class="animation-item" data-animation-in="fadeInUp2"
										data-animation-in-delay="300"
										data-animation-out="fadeOutDown2"
										data-animation-out-delay="700">
										<img class="section_title" src="assets/img/cognizant_logo.png"
											alt="">
										<p class="section__caption">Card System</p>
									</div>
								</div>
								<div class="overflow-hidden">
									<div class="animation-item" data-animation-in="fadeInDown"
										data-animation-in-delay="900" data-animation-out="fadeOutDown"
										data-animation-out-delay="300">

										<div class="row" id="countdown_dashboard">
											<div class="col-xs-3 dash days_dash">
												<div class="digit">0</div>
												<div class="digit">0</div>
												<span class="dash_title">days</span>
											</div>

											<div class="col-xs-3 dash hours_dash">
												<div class="digit">0</div>
												<div class="digit">0</div>
												<span class="dash_title">hours</span>
											</div>

											<div class="col-xs-3 dash minutes_dash">
												<div class="digit">0</div>
												<div class="digit">0</div>
												<span class="dash_title">minutes</span>
											</div>

											<div class="col-xs-3 dash seconds_dash">
												<div class="digit">0</div>
												<div class="digit">0</div>
												<span class="dash_title">seconds</span>
											</div>
										</div>
										<!-- #countdown_dashboard -->
									</div>
								</div>
								<div class="overflow-hidden">
									<div class="animation-item" data-animation-in="fadeInUp2"
										data-animation-in-delay="1100"
										data-animation-out="fadeOutDown2"
										data-animation-out-delay="100">
										<div class="btn-wrap">
											<a class="btn btn-theme btn-icon btn-pill" href="#"
												data-mfp-src="#subscribe" data-mfp-type="inline"
												data-mfp-effect="mfp-effect"> <i class="ion-ios-filing"></i>Transaction
											</a> <a class="btn btn-base btn-icon btn-pill" href="#"
												data-link="#customer"> <i class="icon ion-md-contact"></i>Customer
											</a>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- #home -->

		<div id="transaction" class="section">
        <div class="section__table">
          <div class="section__cell">
            <div class="container">
              <div class="section__heading row">
                <div class="col-xs-12 col-md-5">
                  <div class="overflow-hidden">
                    <div class="animation-item"
                    data-animation-in="fadeInUp2"
                    data-animation-in-delay="300"
                    data-animation-out="fadeOutDown2"
                    data-animation-out-delay="600">
                      <h2 class="section__title"><span class="color">About</span> Us</h2>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-md-6 col-md-offset-1">
                  <div class="overflow-hidden">
                    <div class="animation-item"
                    data-animation-in="fadeInUp2"
                    data-animation-in-delay="300"
                    data-animation-out="fadeOutDown2"
                    data-animation-out-delay="400">
                      <p class="section__caption">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in scelerisque nisi, a convallis nibh. Etiam posuere faucibus.
                      </p>
                    </div>
                  </div>
                </div>
              </div> <!-- .section__heading -->

              <div class="section__content row">
                <div class="col-xs-12 col-md-5">
                  <div class="overflow-hidden">
                    <div class="about-item animation-item"
                    data-animation-in="fadeInLeft"
                    data-animation-in-delay="900"
                    data-animation-out="fadeOutLeft"
                    data-animation-out-delay="100">
                      <div class="media">
                        <div class="media-left">
                          <img class="media-media circle" src="assets/img/item/about-01.jpg" alt="">
                        </div>
                        <div class="media-body">
                          <h3>The DANA story</h3>
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in scelerisque.</p>
                        </div>
                      </div> <!-- .media -->

                      <div class="media">
                        <div class="media-left">
                          <img class="media-media circle" src="assets/img/item/about-02.jpg" alt="">
                        </div>
                        <div class="media-body">
                          <h3>Why choose us?</h3>
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in scelerisque.</p>
                        </div>
                      </div> <!-- .media -->

                      <div class="media">
                        <div class="media-left">
                          <img class="media-media circle" src="assets/img/item/about-03.jpg" alt="">
                        </div>
                        <div class="media-body">
                          <h3>DANA Since 2010</h3>
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in scelerisque.</p>
                        </div>
                      </div> <!-- .media -->
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-md-6 col-md-offset-1">
                  <div class="overflow-hidden">
                    <div class="animation-item"
                    data-animation-in="fadeInRight"
                    data-animation-in-delay="900"
                    data-animation-out="fadeOutRight"
                    data-animation-out-delay="100">
                      <p>Quisque sapien metus, ornare ac suscipit eget, vehicula a ipsum. Fusce vel lorem et urna volutpat varius quis eget orci. Maecenas pretium tristique dui et laoreet. Praesent elementum venenatis nibh, sit amet venenatis sapien rutrum sit amet. Donec mattis pulvinar facilisis. Proin in erat lacinia, tempor dolor et, pharetra.</p>
                      <p>Phasellus fermentum turpis eget ex tincidunt pulvinar. Donec sed nisl risus. Proin in nulla sagittis, sagittis lorem quis.</p>
                      <br>
                      <a class="btn btn-theme btn-icon btn-pill" href="#" data-link="#service">
                        <i class="ion-android-share"></i>Our services
                      </a>
                    </div>
                  </div>
                </div>
              </div> <!-- .section__content -->
            </div>
          </div>
        </div>
      </div> 
		
		<div id="customer" class="section">
			<div class="section__table">
				<div class="section__cell customer">
					<div class="container">
						<!-- section heading -->
						<div class="section__heading row">
							<div class="col-xs-12 col-sm-5">
								<div class="overflow-hidden">
									<div class="animation-item animated fadeInUp2"
										data-animation-in="fadeInUp2" data-animation-in-delay="300"
										data-animation-out="fadeOutDown2"
										data-animation-out-delay="600" style="animation-delay: 300ms;">
										<h2 class="section__title">
											<span class="color">Transaction Queries</span>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6">
								<div class="overflow-hidden">
									<div class="animation-item animated fadeInUp2"
										data-animation-in="fadeInUp2" data-animation-in-delay="300"
										data-animation-out="fadeOutDown2"
										data-animation-out-delay="400" style="animation-delay: 300ms;">
										<p class="section__caption customer">Make a query on
											customer data using the following forms below</p>
									</div>
								</div>
							</div>
						</div>
						<!-- .section__heading -->

						<div class="section__content row"
							style="display: grid; grid-template-columns: repeat(3, 1fr); grid-gap: 10px; grid-auto-rows: minmax(100px, auto);">
							<div class="txpanel column1row1">
								<div class="overflow-hidden">
									<div class="animation-item animated fadeInLeft"
										data-animation-in="fadeInLeft" data-animation-in-delay="700"
										data-animation-out="fadeOutRight"
										data-animation-out-delay="100" style="animation-delay: 700ms;">
										<h4>
											By <b>Category</b>
										</h4>
										<br>
										<br>
										<form class="form" action="transactionbytype">
											Enter Category : <input list="cList" type="text"
												name="category" placeholder="Enter A Category">
											<datalist id="cList">
												<option value="Bills"></option>
												<option value="Education"></option>
												<option value="Entertainment"></option>
												<option value="Gas"></option>
												<option value="Grocery"></option>
												<option value="Healthcare"></option>
												<option value="Test"></option>
											</datalist>
											<br> <br> <input class="submit" type="submit"
												value="Submit">
										</form>
									</div>
								</div>
							</div>
							<div class="txpanel column2row1">
								<div class="overflow-hidden">
									<div class="animation-item animated fadeInDown"
										data-animation-in="fadeInDown" data-animation-in-delay="700"
										data-animation-out="fadeOutLeft"
										data-animation-out-delay="100" style="animation-delay: 700ms;">
										<div class="wrapper">

											<div class="transaction">
												<h4>
													By <b>zip code</b> for a <b>given month</b>
												</h4>
												<form class="form" action="transactionbyzip">
													Enter Zipcode : <input type="text" name="zipcode"
														placeholder="39120"> <br> <br>

													<p>
														<label for="start"></label> Select Month : <input
															id="start" type="month" value="Month Year" name="date">
													</p>
													<input class="submit" type="submit" value="Submit">
												</form>
											</div>


										</div>

									</div>
								</div>
							</div>

							<div class="txpanel column3row1">
								<div class="overflow-hidden">
									<div class="animation-item animated fadeInRight"
										data-animation-in="fadeInRight" data-animation-in-delay="700"
										data-animation-out="fadeOutLeft"
										data-animation-out-delay="100" style="animation-delay: 700ms;">
										<div class="transaction">
											<h4>For Given Time Frame</h4>
											<form class="form" action="transactionbetweendates">
												Enter Your Card Number: <input type="text" name="cardNumber"
													placeholder="Enter Card #"> <br> <br>
												Enter Last 4 of your SS : <input type="text" name="ssn"
													placeholder="1234"> <br> <br>
												<p>
													Starting Date : <input id="start" type="date"
														name="startDate" min="2018-01-01" required=""
														pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"> <span
														class="validity"></span>
												</p>

												Ending Date : <input id="end" type="date" name="endDate"
													max="2025-12-31" required=""
													pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"> <span
													class="validity"></span> <br> <br> <input
													class="submit" type="submit" value="Submit">
											</form>
										</div>
									</div>
								</div>


							</div>
							<div class="txpanel column1row2">
								<div class="overflow-hidden">
									<div class="animation-item animated fadeInRight"
										data-animation-in="fadeInRight" data-animation-in-delay="700"
										data-animation-out="fadeOutLeft"
										data-animation-out-delay="100" style="animation-delay: 700ms;">
										<div class="transaction">
											<h4>By State</h4>
											<form class="form" action="transactionbystate">
												Enter State: <select class="selector">
													<option value="AL">Alabama</option>
													<option value="AK">Alaska</option>
													<option value="AZ">Arizona</option>
													<option value="AR">Arkansas</option>
													<option value="CA">California</option>
													<option value="CO">Colorado</option>
													<option value="CT">Connecticut</option>
													<option value="DE">Delaware</option>
													<option value="DC">District Of Columbia</option>
													<option value="FL">Florida</option>
													<option value="GA">Georgia</option>
													<option value="HI">Hawaii</option>
													<option value="ID">Idaho</option>
													<option value="IL">Illinois</option>
													<option value="IN">Indiana</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
													<option value="LA">Louisiana</option>
													<option value="ME">Maine</option>
													<option value="MD">Maryland</option>
													<option value="MA">Massachusetts</option>
													<option value="MI">Michigan</option>
													<option value="MN">Minnesota</option>
													<option value="MS">Mississippi</option>
													<option value="MO">Missouri</option>
													<option value="MT">Montana</option>
													<option value="NE">Nebraska</option>
													<option value="NV">Nevada</option>
													<option value="NH">New Hampshire</option>
													<option value="NJ">New Jersey</option>
													<option value="NM">New Mexico</option>
													<option value="NY">New York</option>
													<option value="NC">North Carolina</option>
													<option value="ND">North Dakota</option>
													<option value="OH">Ohio</option>
													<option value="OK">Oklahoma</option>
													<option value="OR">Oregon</option>
													<option value="PA">Pennsylvania</option>
													<option value="RI">Rhode Island</option>
													<option value="SC">South Carolina</option>
													<option value="SD">South Dakota</option>
													<option value="TN">Tennessee</option>
													<option value="TX">Texas</option>
													<option value="UT">Utah</option>
													<option value="VT">Vermont</option>
													<option value="VA">Virginia</option>
													<option value="WA">Washington</option>
													<option value="WV">West Virginia</option>
													<option value="WI">Wisconsin</option>
													<option value="WY">Wyoming</option>
												</select> <br> <br> <input class="submit" type="submit"
													value="Submit">

											</form>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
		</main>
		<!-- .site-main -->

		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="site-footer__inner">
							<p class="site-footer__copyright">
								2019 @ <a href="#" target="_blank">Rich Duchin</a> | All rights
								Reserved.
							</p>

							<ul class="site-footer__social">
								<li><a href="https://www.github.com/bullkn0x"
									target="_blank">Github</a></li>
								<li><a href="https://www.facebook.com/Vurteau/"
									target="_blank">Facebook</a></li>
								<li><a href="https://www.linkedin.com/richduchin"
									target="_blank">LinkedIn</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- .site-footer -->
	</div>
	<!-- /site wrap -->

	<!-- script -->



	<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
	<script src='assets/js/vendor/bootstrap.min.js'></script>
	<script src='assets/js/vendor/plugin.js'></script>
	<script src='assets/js/variable.js'></script>
	<script src='assets/js/main.js'></script>
	<script>
    $('#streamer').click(function() {
      if ($(this).is(':checked'))
        $('#streamer_u').show();
      else
        $('#streamer_u').hide();

    });
    $("input:radio[name=platforms]").click(function() {
      var val = $(this).val();
      if (val == 'Other')
        $('#other_platform').show();
      else
        $('#other_platform').hide();
    });
    $("#how_find").change(function() {
      //selection changed
      if (this.value == 'Streamer') //this will give the selected option's value
        $('#streamer_opt').show();
      else
        $('#streamer_opt').hide();
    });
  </script>
	<!-- /script -->

</body>

</html>