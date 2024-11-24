<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style>
   body {
    background-image: url('https://res.cloudinary.com/dwloxkgqa/image/upload/v1731686617/background_iuorrg.jpg');
    background-repeat: no-repeat;
    background-size: cover;   
    background-position: center;
    margin: 0;               
    height: 100vh;            
    display: flex;
    flex-direction: column;   
    justify-content: center;  
    align-items: flex-end;  
    text-align: right;        
}
h1 {
    font-size: 100px;
    margin: 0;  
    padding-right: 40px;              
}
h6 {
    padding-right: 40px;
    font-size: 30px;
    margin: 10px 0;          
    font-family: cursive;     
    font-weight: lighter;     
}
button {
    font-size: 20px;
    padding: 10px 20px;      
    cursor: pointer;          
    border: none;             
    border-radius: 5px;       
    background-color: #a9dba5; 
    color: black 
}
button:hover {
    background-color: #85ef7d;
}
.button-container{
    padding-right:40px;
    
}
   </style>
</head>
<body>
    <h1>GROCERY HUB</h1>
    <h6>Where Quality Meets Convenience</h6>
    <div class="button-container">
        <a href="home.jsp"><button>Get Started</button></a>
</div>
</body>
</html>