<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/login/login.css">
</head>
<body>
    <div class="container">
        <div class="move">
          <div class="p-button normal signin animated pulse">SIGN IN</div>
        </div>
        <div class="welcome">
          <h4 class="bold welcome-text">Welcome Back!</h4>
          <p class="normal text">To keep connected with us please login with your personal info</p>
        </div>
        <div class="hello">
          <h4 class="bold welcome-text">Hello Friend</h4>
          <p class="normal text">Enter your personal details and start journey with us</p>
        </div>
        <div class="form">
          <h4 class="bold title">Create Account</h4>
          <div class="icons">
            <div class="icon"><i class="fab fa-facebook-f"></i></div>
            <div class="icon"><i class="fab fa-github"></i></div>
            <div class="icon"><i class="fab fa-twitter"></i></div>
          </div>
          <p class="normal light">Or use your email for registration</p>
          <input type="text" placeholder="Name" class="normal name">
          <input type="text" placeholder="Email" class="normal email">
          <br/>
          <input type="password" placeholder="Password" class="normal password"><br>
          <a href="${rq.findLoginPwUri}"><p class="normal forgot">Forgot your password?</p></a>
   		  <div class="button"></div>
        </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
      <script src="/resources/login/login.js"></script>
</body>
</html>