<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
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
    <link rel="stylesheet" href="css/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="css/assets/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/mainstyle.css">
    <link rel="stylesheet" type="text/css" href="css/reviewstyle.css">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/main.js"></script>
    <!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="user" class="user.User" scope="page" />
<!-- // Bbs bbs = new Bbs(); -->
<jsp:setProperty name="user" property="userID" /><!-- bbs.setBbsTitle(request) -->
<jsp:setProperty name="user" property="userPassword" />
</head>
<body>
    <div class="wrapper">
        <header id="header">
            <div class="upper">
                <div class="logo"><h1><a href="">WeCanDoIt</a></h1></div>
            </div>
        </header>
        
        <!-- 리뷰 작성 페이지-->
        <form action="insert.jsp" method="post" class="review">
            <fieldset>
                <legend>리뷰 작성</legend>
                <br>
                <div class="review-field">
                    <label for="">제목:</label>
                    <input type="text" class="plain-text"  name="제목" placeholder="제목을 작성하세요" required>
                </div>
                <div class="review-field">
                    <label for="">피부타입:</label>
                    <select name="피부타입" id="">
                        <option value="지성">지성</option>
                        <option value="건성">건성</option>
                        <option value="복합성">복합성</option>
                    </select>
                </div>
                <div class="review-field">
                    <label for="">사용후기:</label>
                    <textarea name="사용후기" id="" cols="30" rows="10" placeholder="후기를 작성하세요" required></textarea>
                </div>
                <button class ="submit" type="submit" onclick="">등록</button>
            </fieldset>
        </form>

        <br>
        <br>
        <footer id="fixed_menu">
            <ul>
                <li>
                    <a href="main.jsp">
                        <span class="icon"><i class="fas fa-home" aria-hidden="true"></i></span>
                        <span class="txt">홈</span>
                    </a>
                </li>
                <li>
                    <a href="chatpage.jsp">
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