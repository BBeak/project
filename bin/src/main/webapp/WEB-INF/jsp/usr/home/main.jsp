<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="메인" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="/resources//home/home.css" />
  </head>
  <body>
    <section class="header">
      <header>
        <div><span>login</span></div>
        <div><span>signin</span></div>
        <div><span>Main</span></div>
      </header>
    </section>
    <div class="stage">
    <section class="header">
      <header>
        <div class="move-to-login"><a href="login">SIGN UP / SIGN IN</a></div>
      </header>
    </section>
      <div class="container">
        <div class="ring">
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
           <div class="img"></div>
        </div>
      </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="/resources/home/home.js"></script>
  </body>
</html>