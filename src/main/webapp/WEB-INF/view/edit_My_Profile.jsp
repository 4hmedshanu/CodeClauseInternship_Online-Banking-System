<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Edit Profile</title>
  <style>
    body {
      background-color: #3e8e9c;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #ffffff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .edit-profile-form {
      background-color: rgba(255, 255, 255, 0.05);
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
      width: 350px;
      backdrop-filter: blur(10px);
    }

    .edit-profile-form h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #ffffff;
    }

    .edit-profile-form label {
      display: block;
      margin: 10px 0 5px;
      color: #e0f7fa;
    }

    .edit-profile-form input[type="text"],
    .edit-profile-form input[type="email"],
    .edit-profile-form input[type="tel"],
    .edit-profile-form input[type="password"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 6px;
      background-color: #ffffff;
      color: #333;
    }

    .edit-profile-form .btn-container {
      margin-top: 20px;
      display: flex;
      justify-content: space-between;
    }

    .edit-profile-form button {
      padding: 10px 20px;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    .save-btn {
      background-color: #7f00ff;
      color: white;
    }

    .cancel-btn {
      background-color: #00bcd4;
      color: white;
    }

    .edit-profile-form button:hover {
      opacity: 0.9;
    }
  </style>
</head>
<body>

		<% int i =(int) request.getAttribute("id");
		%>
  <form class="edit-profile-form" action="/online_banking_system/editprofile" method="get"  onsubmit="alert(' Update Profile successfully  !')">
    <h2>Edit Profile</h2>

    <label for="fullname">Full Name</label>
    <input type="text" id="fullname" placeholder="Your Name"  name="user_name" />

    <label for="email">Email</label>
    <input type="email" id="email" placeholder="example@mail.com" name="use_email" />

	<select id="email"  name="role" >
          <option selected disabled>Select Role </option>
          <option value="Admin">Admin</option>
          <option Value="User">User</option>
   </select>
   
     <input type="number"  name="id" value="<%=i%>" hidden="" />
    <div class="btn-container">
      <button type="submit" class="save-btn">Save</button>
      <button type="reset" class="cancel-btn">Cancel</button>
    </div>
  </form>

</body>
</html>
    