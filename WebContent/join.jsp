<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>회원가입</title>
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
    <link rel="stylesheet" type="text/css" href="css/joinstyle.css">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/main.js"></script>
    <script src="../js/script.js"></script>]
</head>
<body>
    <div class="wrapper">
        <header id="header">
            <div class="upper">
                <div class="logo"><h1><a href="">WeCanDoIt</a></h1></div>
            </div>
        </header>
        
        <!-- 회원가입 페이지-->
        <form action="joinAction.jsp" method="post" class="join">
            <fieldset>
                <legend>회원가입</legend>
                <br>
                아이디
                <div class="join-field">
                    <!-- <label for="">아이디</label> -->
                    <input id="" name="userID" type="text" class="plain-text" placeholder="아이디" required>
                </div>
                비밀번호
                <div class="join-field">
                    <!-- <label for="">비밀번호</label> -->
                    <input id="" name="userPassword" type="password" class="plain-text" placeholder="비밀번호" required>
                </div>
                이름
                <div class="join-field">
                    <!-- <label for="">이름</label> -->
                    <input id="" name="userName" type="text" class="plain-text" placeholder="이름" required >
                </div>
                성별
                <div class="join-field">
                    <!-- <label for="">성별</label> -->
                    <select name="userGender" id="">
                        <option value="여자">여자</option>
                        <option value="남자">남자</option>
                    </select>
                </div>
                <button class ="submit" type="submit">가입하기</button>
            </fieldset>
            <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      </form>
		<br>
        <br>
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