	<%@page import="java.util.List"%>
<%@page import="entity.uservalue"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	    
	    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	    
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="<c:url value='/resouces/css/home.css' />" />
	<link rel="stylesheet" href="<c:url value='/resouces/css/foudtransfer.css' />" />
	</head>
<body>

<% uservalue data=(uservalue) request.getAttribute("data");
   List<uservalue> accoundata=(List<uservalue>) request.getAttribute("data_2");
%>

  <!-- Header -->
  <header>
    <h1>Online Banking System</h1>
    <div class="nav-links">
      <a href="#">Retail</a>
      <a href="#">Corporate</a>
      <a href="#">International</a>
      <a href="#">Apply</a>
      <a href="#">Services</a>
    </div>
  </header>

  <!-- Welcome Banner -->
  <div class="welcome-banner">
    <div class="avatar"></div>
    <div>
      <h2>Welcome <%=data.getUser_name() %></h2>
      <p>Last login: 17/09/23 11:25:03 AM</p>
    </div>
  <div class="btns">
      <button><a href="/online_banking_system/home/<%=data.getId() %>" >Home</a></button>
      <button><a href="/online_banking_system" >Logout</a></button>
    </div>
  </div>


  <!-- Tab Menu -->
  <div class="tabs">
    <a href="/online_banking_system/Accountdetail/<%= data.getId()%>" >My Account</a>
    <a href="/online_banking_system/myprofile/<%= data.getId()%>" >My Profile</a>
    <a href="/online_banking_system/changepasswared/<%= data.getId()%>" >Change Password</a>
     <a  href="/online_banking_system/foudtransfer/<%= data.getId()%>"  class="active" >Fund Transfer</a>
    <a  href="/online_banking_system/home/<%=data.getId()%>" >Statement / Transaction history</a>
    
  </div>
  


  
 

  <!-- Statement Table -->
  <div class="statement">
  
   <div class="transfer-container">
     <h3>💸 Fund Transfer</h3>
    <form action="/online_banking_system/account" method="get" onsubmit="alert(' successfully Transfer !')">
      <div class="form-row">
      <% int id=0;
      	 int avilable=0;
      %>
        <select name="acoountnumber"  required="required">
        <option selected disabled>Select Your Account Number </option>
        	<%for(uservalue ele:accoundata){
        		%>
			  <option value="<%=ele.getAcoountnumber()%>" <%id=ele.getSender_account_id(); %>  ><%avilable=ele.getBalance();%> <%=ele.getAcoountnumber()%></option>
			 <%} %>
		</select>
		
        <input type="text" name="Recipient_Account_Numbe" placeholder="Recipient Account Number" required />
      </div>
      
       <div class="form-row">
        <input type="text" name="Receiver_Account_Name" placeholder="Receiver  Account Holder Name" required />
        
      </div>

      <div class="form-row">
        <input type="text" name="Ifc_code" placeholder="IFSC Code" required />
        <input type="number" name="balance" placeholder="Amount (INR)" min="1" max="<%=avilable%>" required />
      </div>
      
      <input type="text" name="account_type" placeholder="IFSC Code" value="CR" required hidden="" />
      	<input name="sender_account_id" value="<%=id%>" hidden="">
		<input name="id" value="<%=data.getId()%>" hidden="">
		<input name="avilable" value="<%=avilable%>" hidden="">
      <textarea rows="3" name="description" placeholder="Remarks (optional)"></textarea>

<input type="number" hidden="">
      <button type="submit" class="btn">Transfer Now</button>

      <div class="back-link">
        🔙 <a href="index.html">Back to Home</a>
      </div>
    </form>
  </div>
  
  </div>
 
    <!-- Feature Grid -->
  <div class="features">
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/briefcase.png" alt="Business"><span>Business</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/bank-card-back-side.png" alt="Credit Cards"><span>Credit Cards</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/airplane-take-off.png" alt="Travel"><span>Travel</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/bank-check.png" alt="Checking"><span>Checking</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/wallet.png" alt="Savings"><span>Savings</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/house.png" alt="Home Loans"><span>Home Loans</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/car.png" alt="Auto"><span>Auto</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/graph.png" alt="Investments"><span>Investments</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/city.png" alt="Commercial"><span>Commercial</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/meeting.png" alt="Meeting"><span>Schedule Meeting</span></div>
    <div class="feature-card"><img src="https://img.icons8.com/ios-filled/50/speedometer.png" alt="Credit Score"><span>Free Credit Score</span></div>
  </div>

  <!-- Footer -->
  <footer>
    &copy; 2025 Online Banking System. All rights reserved.
  </footer>

</body>
	</html>
