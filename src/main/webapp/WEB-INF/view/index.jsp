<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Online  Banking System</title>
  
  
  
   <link rel="stylesheet" href="<c:url value='/resouces/css/firstpage.css' />" />
  
  
  
</head>
<body>
  <div class="main-container">
    <div class="content">
      <h1>CodeClause Internship</h1>
      <p class="subtitle">💼 Online Banking System</p>
      <p class="description">
      
      		Welcome to our Online Banking System — a modern, secure, and user-centric platform designed as part of our internship project to demonstrate real-world banking functionalities. This system offers essential features like account management, fund transfers, transaction tracking, and bill payments, all through a simple and intuitive web interface.
      </p>
      
          <p class="description">
      
      		Built using the latest technologies, this project reflects best practices in UI/UX, web security, and responsive design, making banking easy, safe, and accessible from anywhere.
      </p>
      <p class="description">🔹 Key Features:</p>
      <ul class="description">
      <li>Secure Login & Account Dashboard</li>
      <li>Fund Transfers (Intra & Inter Bank)</li>
      <li>Real-Time Transaction History</li>
      <li>account management </li>
       <li>Responsive Design for All Devices</li>
       <li>Bill Payment Module</li>
      </ul>
      
      <p class="description"></p>
      
      <div class="buttons">
        <a href="register" class="btn register">Register</a>
        <a href="login" class="btn login">Login</a>
      </div>
    </div>
    <div class="image-container">
      <img src="<c:url value='/resouces/photo/p1.jpg' />" alt="Bank Graphic" />
    </div>
  </div>
</body>
</html>

