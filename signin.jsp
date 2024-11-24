<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
<style>
    /* General body styling */
    body {
      background-image:url('https://res.cloudinary.com/dwloxkgqa/image/upload/v1732036698/signin_c0pgnl.jpg');
      background-size:cover;
      font-family: "Amazon Ember", Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f3f3f3;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    /* Centering login container */
    .login-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
    }

    /* Login box styling */
    .login-box {
      width: 350px;
      padding: 20px;
      border: 2px solid rgb(13, 13, 13);
      border-radius: 8px;
      background-color: #fff;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      text-align: center;
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

    input[type="email"], input[type="password"] {
      width: 90%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .login-btn {
      width: 100%;
      padding: 10px;
      background-color: #1a5e16;;
      border: 1px solid #1a5e16;
      border-radius: 4px;
      font-size: 16px;
      cursor: pointer;
      color: white;
      font-weight: bold;
    }

    .login-btn:hover {
      background-color: #083f1c;
    }

    /* Divider styling */
    .divider {
      border-top: 1px solid #ddd;
      margin: 15px 0;
    }

    /* "New to Amazon" section */
    .new-to-groceryhub {
      font-size: 14px;
      color: #767676;
      margin: 20px 0 10px;
    }

    .create-account-btn {
      width: 100%;
      padding: 10px;
      background-color: #e7e9ec;
      border: 1px solid #adb1b8;
      border-radius: 4px;
      font-size: 14px;
      font-family: "Amazon Ember", Arial, sans-serif;
      color: #111;
      cursor: pointer;
      font-weight: bold;
    }

    .create-account-btn:hover {
      background-color: #d6d8db;
    }
    .msg h1{
    margin-top:15px;
    font-size: 10px;
     font-family:monospace ;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <div class="login-box">
     <form action="loginAction.jsp" method="POST">
      <h1>Sign-In</h1>
        <label for="email">Email or mobile phone number</label>
        <input type="email" id="email" name="email" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <button type="submit" class="login-btn">Continue</button>
      </form>
      <div class="divider"></div>
      <p class="new-to-groceryhub">New to GroceryHub?</p>
      <a href="signup.jsp"><button class="create-account-btn">Create your account</button></a>
      <div class="msg">
       <%
        String msg=request.getParameter("msg");
        		if("notexist".equals(msg))
        		{
        %>
        <h1>incorrect username or password</h1>
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
</body>
</html>