<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register - Online Banking System</title>
  <link rel="stylesheet" href="<c:url value='/resouces/css/register.css' />" />

</head>
<body>
  <div class="register-container">
    <div class="form-box">
      <h2><span>📝</span> Register</h2>
      <p class="subtitle">Fill in the fields below to register for an account</p>

      <form action="register_data" method="port" onsubmit="alert(' Registration successful! Redirecting to login page...  !')">
      
        <div class="row">
          <input type="text" placeholder="Enter First Name.." name="user_name"  required />
          <input type="text" placeholder="Enter Last Name.." name="user_lestname" required />
        </div>
        <div class="row">
        <input type="email" placeholder="Enter Email.." name="use_email" required />
        </div>
        
        
        <div class="row">
          <input type="password" placeholder="Enter Password.." name="user_passwared" required />
          <input type="password" placeholder="Confirm Password.." required />
        </div>
        
        
        <div class="row">
	        	  <select name="role" id="role" required>
					   <option value="User">User</option>
					    <option value="admin">Admin</option>
					  </select>
        </div>
        
        <button type="submit" class="btn register-btn" >Register</button>

        <p class="account-msg">Already have an account? <a href="login">Sign In</a></p>
        <p class="back-link">🔙 <a href="/online_banking_system/">Back</a></p>
      </form>
    </div>
  </div>
</body>
</html>
