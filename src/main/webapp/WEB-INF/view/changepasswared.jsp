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
	<link rel="stylesheet" href="<c:url value='/resouces/css/accountdetail.css' />" />
	</head>
<body>

<% uservalue data=(uservalue) request.getAttribute("data");
  
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
      <h2>Welcome <%=data.getUser_name()%></h2>
      <p>Last login: 17/09/23 11:25:03 AM</p>
    </div>
   <div class="btns">
      <button><a href="/online_banking_system/home/<%=data.getId() %>" >Home</a></button>
      <button><a href="/online_banking_system" >Logout</a></button>
    </div>
  </div>


  <div class="tabs">
    <a href="/online_banking_system/Accountdetail/<%= data.getId()%>" >My Account</a>
    <a href="/online_banking_system/myprofile/<%= data.getId()%>" >My Profile</a>
    <a href="/online_banking_system/changepasswared/<%= data.getId()%>"  class="active">Change Password</a>
     <a  href="/online_banking_system/foudtransfer/<%= data.getId()%>"  >Fund Transfer</a>
    <a  href="/online_banking_system/home/<%=data.getId()%>" >Statement / Transaction history</a>
   
  </div>
  
  
  

  <!-- Statement Table -->
  <div class="statement">
  
  
  			
  			
  			<div class="password-section">
    <h3>🔐 Change Password</h3>
    <form action="/online_banking_system/changevaluepassword" method="get" onsubmit="alert('Change Password successfully   !')">
      <input type="password" placeholder="Current Password" name="user_passwared" required />
      <input type="password" placeholder="New Password" name="new_password" required />
      <input type="password" placeholder="Confirm New Password"  required />
      <input type="number" value="<%=data.getId()%>" name="id"  hidden>
      <button type="submit" class="btn" >Update Password</button>
    </form>
    

    <div class="back-link">
      🔙 <a href="my-account.html">Back to My Account</a>
    </div>
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
