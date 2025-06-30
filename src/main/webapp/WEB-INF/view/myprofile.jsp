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
	<link rel="stylesheet" href="<c:url value='/resouces/css/myprofile.css' />" />
	</head>
<body>


<%
		uservalue data=(uservalue) request.getAttribute("data");
	    List<uservalue> account=(List<uservalue>) request.getAttribute("data_2");
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
    <a href="/online_banking_system/myprofile/<%= data.getId()%>" class="active">My Profile</a>
    <a href="/online_banking_system/changepasswared/<%= data.getId()%>" >Change Password</a>
     <a  href="/online_banking_system/foudtransfer/<%= data.getId()%>"  >Fund Transfer</a>
    <a  href="/online_banking_system/home/<%=data.getId()%>"  >Statement / Transaction history</a>
  
  </div>
  


  
 

  <!-- Statement Table -->
  <div class="statement">
  
  		<div class="profile-section">
    <h3>👤 My Profile</h3>
    <div class="profile-details">
      <div class="profile-photo">
        <img src="profile-photo.jpg" alt="Profile Photo" />
      </div>
      <div class="info">
        <div class="info-item">
          <label>Full Name:</label>
          <span><%=data.getUser_name() %></span>
        </div>
        <div class="info-item">
          <label>Email:</label>
          <span><%=data.getUse_email() %></span>
        </div>
        <div class="info-item">
          <label>Role:</label>
          <span><%=data.getRole() %></span>
        </div>
        
        <%
        String addree =null;
        int account_id=0;
        for(uservalue ele:account){
        %>
       
        <div class="info-item">
          <label>Account Number:</label>
          <span><%=ele.getAcoountnumber() %> <% addree=ele.getBranch_Name(); %> <% account_id=ele.getSender_account_id(); %></span>
        </div>
        <%} %>
        <div class="info-item">
          <label>Address:</label>
          <span><%=addree %>, Uttarakhand, India</span>
        </div>

        <a href="/online_banking_system/edit/<%= data.getId()%>" class="btn-edit">✏️ Edit Profile</a>
      </div>
    </div>

    <div class="back-link">
      🔙 <a href="index.html">Back to Home</a>
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
