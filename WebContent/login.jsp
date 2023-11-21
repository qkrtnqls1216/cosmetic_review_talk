<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>로그인</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
    <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script
        src="https://kit.fontawesome.com/6e4020d345.js"
        crossorigin="anonymous"
        ></script>

    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/mainstyle.css">
    <link rel="stylesheet" type="text/css" href="css/loginstyle.css">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
    <div class="wrapper">
        <header id="header">
            <div class="upper">
                <div class="logo"><h1><a href="">WeCanDoIt</a></h1></div>
            </div>
        </header>
        
        <!-- 로그인 페이지-->
        <form action="loginAction.jsp" method="post" class="login">
          <fieldset>
              <legend>로그인</legend>
              <br>
              <div class="login-field">
                  <label for=""><i class="fas fa-user-circle"></i></label>
                  <input id="tit" name="userID" type="text" class="plain-text" placeholder="아이디">
              </div>
              <div class="login-field">
                  <label for=""><i class="fas fa-lock"></i></label>
                  <input id="tit" name="userPassword" type="password" class="plain-text" placeholder="비밀번호">
              </div>
              <button class ="submit" type="submit">로그인</button>
          </fieldset>
      </form>
        <br>
      <form action="join.jsp" method="post" class="login">
          <fieldset>
              <button class ="submit" type="submit">회원가입</button>
          </fieldset>
      </form>

        <footer id="fixed_menu">
            <ul>
                <li>
                    <a href="">
                        <span class="icon"><i class="fas fa-home" aria-hidden="true"></i></span>
                        <span class="txt">홈</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="icon"><i class="fas fa-comments" aria-hidden="true"></i></span>
                        <span class="txt">채팅</span>
                    </a>
                </li>
            </ul>
        </footer>
        <div class="dim"></div>
    </div>

    
</body>
</html>