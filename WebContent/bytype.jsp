<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="creditcardwebapp.bytype"%>
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Test</title>
<link rel='stylesheet' href='result.css'> 
<link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png">
  <link rel="icon" href="assets/img/favicon.ico">
  <link rel='stylesheet' href='assets/css/bootstrap.min.css'> <!-- bootstrap -->
  <link rel='stylesheet' href='assets/css/vendor.css'> <!-- plugin -->
  <link rel='stylesheet' href='assets/css/lycanblue.css'> <!-- edit to be red.css, orange.css, pink.css, yellow.css , purple.css, blue.css , brown.css, green.css -->
  <link rel='stylesheet' href='assets/css/custom.css'> <!-- custom style should place in this file -->
  <!-- <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet"> -->

  <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet"> <!-- tron-like fonts for site -->
  <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
  <!--[if lte IE 9]><!-->
  <script src='assets/js/vendor/html5shiv.min.js'></script>
</head>

<body>
 <div class="site-loader">
    <span></span>
    <p>Loading</p>
  </div>
<section>
<div  class="animation-item animated fadeInDown" data-animation-in="fadeInDown" data-animation-in-delay="700" data-animation-out="fadeOutRight" data-animation-out-delay="100" style="animation-delay: 700ms">
  <h1 class="header">Transactions By Type</h1>
  </div>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="animation-item animated fadeInRight" data-animation-in="fadeInRight" data-animation-in-delay="700" data-animation-out="fadeOutUp" data-animation-out-delay="100" style="animation-delay: 700ms">Count</th>
          <th>Value</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
        	
          <td>${count}</td>
          <td>$${totalVal}</td>
        
        </tr>
       
      </tbody>
    </table>
  </div>
</section>


  <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
  <script src='assets/js/vendor/bootstrap.min.js'></script>
  <script src='assets/js/vendor/plugin.js'></script>
  <script src='assets/js/variable.js'></script>
  <script src='assets/js/main.js'></script>
</body>
</html>