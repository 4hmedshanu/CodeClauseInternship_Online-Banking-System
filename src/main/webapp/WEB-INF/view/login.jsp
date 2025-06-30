<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login -  Online Banking System</title>
   <link rel="stylesheet" href="<c:url value='/resouces/css/login.css' />" />
  <link rel="stylesheet" href="login-style.css" />
</head>
<body>
  <div class="login-container">
    <div class="form-box">
      <h2><span>🔐</span> Login</h2>
      <p class="subtitle">Enter your credentials to access your account</p>

      <form action="loginuser" method="get">
        <input type="email" placeholder="Enter Email.." name="use_email" required />
        <input type="password" placeholder="Enter Password.." name="user_passwared"  required />

        <button type="submit" class="btn login-btn">Login</button>

        <p class="account-msg">Don't have an account? <a href="register">Register Now</a></p>
        <p class="back-link">🔙 <a href="/online_banking_system">Back</a></p>
      </form>
    </div>
  </div>
</body>


</html>
