<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signin</title>
  <style>
    body {
      background-image:url('https://res.cloudinary.com/dwloxkgqa/image/upload/v1732102368/signup_howqny.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      
      font-family: "Amazon Ember", Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f3f3f3;
      display: flex;
      justify-content: flex-start;
      align-items: center;
      height: 100vh;
    }

    .signup-container {
      margin-left: 25%;
      text-align: center;
    }

    .signup-box {
      width: 350px;
      padding: 20px;
      margin-bottom: 30px;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      margin-top: -10px; /* Removed extra margin */
    }

    .logo {
      margin-bottom: 5px; /* Reduced the space */
    }

    .logo img {
      width: 200px;
      height: 190px;
    }

    h1 {
      font-size: 24px;
      margin-bottom: 20px;
    }

    label {
      font-size: 14px;
      margin-bottom: 8px;
      display: block;
      text-align: left;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 90%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 14px;
    }

    .signup-btn {
      width: 100%;
      padding: 10px;
      background-color: #5cca55;
      border: none;
      border-radius: 4px;
      font-size: 14px;
      cursor: pointer;
      font-weight: bold;
    }

    .signup-btn:hover {
      background-color: #4ec346;
    }

    .terms {
      font-size: 12px;
      color: #767676;
      margin-top: 10px;
    }

    .footer {
      font-size: 12px;
      margin-top: 20px;
      color: #007185;
    }

    .footer a {
      text-decoration: none;
      color: #007185;
    }

    .footer a:hover {
      text-decoration: underline;
    }
    .msg h1{
    margin-top:15px;
    font-size: 10px;
    font-family:monospace ;
    }
  </style>
</head>
<body>
 <form action="signupAction.jsp" method="POST">

  <div class="signup-container">
    <div class="logo">
      <img src="https://res.cloudinary.com/dwloxkgqa/image/upload/v1732018321/logo_cfvl6x.png" alt="Logo">
    </div>
    <div class="signup-box">
      <h1>Create account</h1>
        <label for="name">Your name</label>
        <input type="text" id="name" name="name" placeholder="Your full name" required>
        
        <label for="email">Username or email</label>
        <input type="email" id="email" name="email" placeholder="Enter a valid email" required>
        
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="At least 6 characters" required>
        
        <label for="repassword">Re-enter password</label>
        <input type="password" id="repassword" name="repassword" placeholder="Re-enter your password" required>
        
       <button type="submit" class="signup-btn">Continue</button>
      </form>
      <div class="footer">
        Already have an account? <a href="signin.jsp">Sign in</a>
        <div class="msg">
        <%
        String msg=request.getParameter("msg");
        		if("valid".equals(msg))
        		{
        %>
        <h1>successfully created</h1>
        <%} %>
         <%
        		if("invalid".equals(msg))
        		{
        %>
        <h1>something went wrong!</h1>
        <%} %>
        </div>
      </div>
    </div>
  </div>
</body>
</html>