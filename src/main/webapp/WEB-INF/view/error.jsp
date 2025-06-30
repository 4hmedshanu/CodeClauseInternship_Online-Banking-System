<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Error - Page Not Found</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: #3e8e9c;
      font-family: 'Segoe UI', sans-serif;
      color: #ffffff;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      text-align: center;
    }

    .error-container {
      max-width: 600px;
      padding: 30px;
      background-color: rgba(255, 255, 255, 0.05);
      border-radius: 16px;
      box-shadow: 0 0 20px rgba(0,0,0,0.3);
      backdrop-filter: blur(10px);
    }

    .error-code {
      font-size: 100px;
      font-weight: bold;
      color: #ffffff;
    }

    .error-message {
      font-size: 24px;
      margin-bottom: 10px;
      color: #e0f7fa;
    }

    .error-description {
      font-size: 16px;
      color: #e0f7fa;
      margin-bottom: 30px;
    }

    .home-btn {
      padding: 12px 24px;
      background-color: #00bcd4;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      text-decoration: none;
      font-weight: bold;
      transition: background 0.3s;
    }

    .home-btn:hover {
      background-color: #0097a7;
    }
  </style>
</head>
<body>

  <div class="error-container">
    <div class="error-code">404</div>
    <div class="error-message">Oops! Page not found</div>
    <div class="error-description">
      The page you're looking for doesn't exist or has been moved.<br>
      Please check the URL or return to the homepage.
    </div>
    <a href="/online_banking_system/" class="home-btn">Go to Homepage</a>
  </div>

</body>
</html>
