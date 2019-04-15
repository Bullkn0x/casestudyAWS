<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.transaction" %>
<%@ page import="java.util.*"%>
<%@ page import="creditcardwebapp.byzip"%>
<!doctype html>
 <% %>
<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Test</title>
  <link rel='stylesheet' href='result.css'> 
    <link rel="icon" href="assets/img/favicon.ico">
  <link rel='stylesheet' href='assets/css/bootstrap.min.css'> <!-- bootstrap -->
  <link rel='stylesheet' href='assets/css/vendor.css'> <!-- plugin -->
  <link rel='stylesheet' href='assets/css/lycanblue.css'> <!-- edit to be red.css, orange.css, pink.css, yellow.css , purple.css, blue.css , brown.css, green.css -->
  <link rel='stylesheet' href='assets/css/custom.css'> <!-- custom style should place in this file -->
  <!-- <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet"> -->

  <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
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
<%ArrayList list = (ArrayList)request.getAttribute("outputlist"); %>
  <h1>Transactions for ${title}</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="header__item"><a id="id" class="filter__link" href="#">Tx ID</a></th>
          <th class="header__item"><a id="branchCode" class="filter__link" href="#">Branch Code</a></th>
          <th class="header__item"><a id="month" class="filter__link" href="#">Month</a></th>
          <th class="header__item"><a id="day" class="filter__link" href="#">Day</a></th>
          <th class="header__item"><a id="year" class="filter__link" href="#">Year</a></th>
          <th class="header__item"><a id="ssn" class="filter__link" href="#">SSN</a></th>
          <th class="header__item"><a id="cardnumber" class="filter__link" href="#">Card #</a></th>
          <th class="header__item"><a id="value" class="filter__link" href="#">Value</a></th>
          <th class="header__item"><a id="type" class="filter__link" href="#">Type</a></th>
        </tr>
      </thead>
    </table>
  </div>
  <div  class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody class="table-content">
      <% for (int i=0; i <list.size(); i++){ %>
      <% transaction t = (transaction)list.get(i); %>
                <tr class="table-row">
                    <td class="table-data"><% out.print(t.getID());%></td>
                    <td class="table-data"><% out.print(t.getBranchCode());%></td>
                    <td class="table-data"><% out.print(t.getMonth());%></td>
                    <td class="table-data"><% out.print(t.getDay());%></td>
                    <td class="table-data"><% out.print(t.getYear());%></td>
                    <td class="table-data"><% out.print(t.getSsn());%></td>
                    <td class="table-data"><% out.print(t.getCardNo());%></td>
                    <td class="table-data"><% out.print(t.getValue());%></td>
                    <td class="table-data"><% out.print(t.getType());%></td>
                </tr>
 
     <%} %>
    
        
      </tbody>
    </table>
  </div>
</section>
  <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
  <script src='assets/js/vendor/bootstrap.min.js'></script>
  <script src='assets/js/vendor/plugin.js'></script>
  <script src='assets/js/variable.js'></script>
  <script src='assets/js/main.js'></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/sort.js"></script>
</body>
</html>