<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.transaction" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="creditcardwebapp.transactionbetweendates"%>
<!doctype html>
 <% %>
<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Test</title>
<link rel='stylesheet' href='result.css'> 
</head>

<body>
 <div class="site-loader">
    <span></span>
    <p>Loading</p>
  </div>
<section>
<%ArrayList list = (ArrayList)request.getAttribute("outputlist"); %>
  <h1>Transactions By Zip</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="header__item"><a id="id" class="filter__link" href="#">Card #</a></th>
          <th class="header__item"><a id="branchCode" class="filter__link" href="#">SSN</a></th>
          <th class="header__item"><a id="month" class="filter__link" href="#">Value</a></th>
          <th class="header__item"><a id="day" class="filter__link" href="#">Type</a></th>
          <th class="header__item"><a id="year" class="filter__link" href="#">Date</a></th>
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
	                <td class="table-data"><% out.print(t.getCardNo());%></td>
	                <td class="table-data"><% out.print(t.getSsn());%></td>
	                <td class="table-data"><% out.print(t.getValue());%></td>
	                <td class="table-data"><% out.print(t.getType());%></td>
                    <td class="table-data"><% out.print(t.getDate());%></td>
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