<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add New Account - Easy-Way Bank</title>
  <style>
    :root {
      --bg-color: #3e8e9c;
      --text-color: #ffffff;
      --desc-color: #e0f7fa;
      --register-color: #7f00ff;
      --login-color: #00bcd4;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: var(--bg-color);
      margin: 0;
      padding: 0;
      color: var(--text-color);
    }

    .form-container {
      max-width: 1000px;
      margin: 40px auto;
      background-color: white;
      border-radius: 12px;
      padding: 40px;
      color: #333;
      box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    }

    .form-container h2 {
      color: #3e8e9c;
      text-align: center;
      margin-bottom: 20px;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 1.2rem;
    }

    .form-row {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .form-row input,
    .form-row select {
      flex: 1;
      padding: 12px;
      font-size: 1rem;
      border-radius: 6px;
      border: 1px solid #ccc;
      min-width: 240px;
    }

    .btn-submit {
      background-color: var(--register-color);
      color: white;
      border: none;
      border-radius: 6px;
      padding: 14px 24px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
      margin: 20px auto 0;
      width: 200px;
    }

    .btn-submit:hover {
      background-color: #6c00d9;
    }

    .back-link {
      text-align: center;
      margin-top: 1.5rem;
    }

    .back-link a {
      color: #0077cc;
      text-decoration: none;
      font-size: 0.95rem;
    }

    @media (max-width: 768px) {
      .form-row {
        flex-direction: column;
      }
    }
  </style>
</head>
<body>

<%
  String name = (String) request.getAttribute("name");
  int id = (int) request.getAttribute("id");
%>

<div class="form-container">
  <h2>➕ Add New Bank Account</h2>

  <form action="/online_banking_system/newaccount" method="get"  onsubmit="alert('Add New Bank Account successfully  !')">
    <div class="form-row">
      <input type="text" placeholder="Full Name" value="<%=name%>" name="user_name" required />
      <input type="number" placeholder="Account Number" name="acoountnumber" required />
    </div>

    <input type="number" name="id" value="<%=id%>" hidden />

    <div class="form-row">
      <select required name="account_type">
        <option selected disabled>Select Account Type</option>
        <option value="Saving">Savings</option>
        <option value="Current">Current</option>
        <option value="Fixed Deposit">Fixed Deposit</option>
      </select>
      <input type="number" placeholder="Initial Deposit (INR)" name="balance" required />
    </div>

    <div class="form-row">
      <input type="text" placeholder="Branch Name" name="Branch_Name" required />
      <input type="text" placeholder="IFSC Code" name="Ifc_code" required />
    </div>

    <div class="back-link">
      🔙 <a href="/online_banking_system/Accountdetail/<%=id%>">Back to My Account</a>
    </div>

    <input type="submit" class="btn-submit" value="Create Account" />
  </form>
</div>

</body>
</html>
