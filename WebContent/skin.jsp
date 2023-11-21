<%@ page import="java.sql.*" %>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스킨케어</title>
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
<link rel="stylesheet" type="text/css" href="css/skin.css" />
<link rel="stylesheet" type="text/css" href="css/reviewstyle.css">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/main.js"></script>

</head>
<body>
<%
// 1단계 드라이버 불러오기
Class.forName("com.mysql.cj.jdbc.Driver");
// 2단계 디비연결
String dbUrl ="jdbc:mysql://localhost:3306/review?characterEncoding=UTF-8&serverTimezone=UTC"; 
String dbUser="root";
String dbPass="@qkrtnqls991216";
Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
// 3단계 sql select 게시판 모든 글 가져오기 (num(글번호) 기준으로 내림차순) 
String sql="select* from skin";
PreparedStatement pstmt=con.prepareStatement(sql);
// 4단계  ResultSet rs = 실행 결과 저장
ResultSet rs=pstmt.executeQuery();
%>
	<div class="wrapper">
        <header id="header">
            <div class="upper">
                <div class="logo"><h1><a href="">WeCanDoIt</a></h1></div>
                <div class="tab"><a href="">tab</a></div>
                <div class="search"><a href="">search</a></div>
            </div>
        </header>
        <div class="search_open">
            <div class="search_tab">
                 <form  method="get" action="search.jsp">
                    <input type="text" name="everyName" placeholder="상품명으로 검색하시오">
                    <input type="button">
                </form>
            </div>
        </div>
        <div class="ctg_open">
            <div class="ctg_open_inner">
            <%
            	if(session.getAttribute("userID")==null){
            		
            %>
                <div class="location">
                    <ul>
                        <li class="active"><a href="login.jsp">로그인</a></li>
                        <li class="active"><a href="join.jsp">회원가입</a></li>
                    </ul>
                </div>
                 <%
                } else { 
                %>
                <div class="location">
                    <ul>
                        <li><a href="logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
                <%           
                }
                %>
                <div class="menu">
                    <div class="tit">WOMAN</div>
                    <div class="list clearfix">
                        <ul>
                            <li><a href="skin.jsp">스킨케어</a></li>
                            <li><a href="base.jsp">베이스 메이크업</a></li>
                            <li><a href="eye.jsp">아이 메이크업</a></li>
                            <li><a href="lip.jsp">립</a></li>
                        </ul>
                    </div>
                </div>
                <div class="menu">
                    <div class="tit">MAN</div>
                    <div class="list clearfix">
                        <ul>
                            <li><a href="boyskin.jsp">스킨케어</a></li>
                            <li><a href="boybase.jsp">베이스 메이크업</a></li>
                            <li><a href="boyeye.jsp">아이 메이크업</a></li>
                            <li><a href="boylip.jsp">립</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>
		<section id="content1" class="content">
			<h2>SKIN</h2>
			<div>
				<ul class="skinlist">
					<li>
						<a href="list.jsp">
							<img src="images/페이셜 트리트먼트 클리어 로션.png">
							<dl>
								<dt>페이셜 트리트먼트 클리어 로션</dt>
								<dd>용량:230ml<br>가격:92000원<br>SK-II</dd>
							</dl>
						</a>
					</li>
				</div>
				<div>
				<ul class="skinlist">
					<li>
						<a href="#">
							<img src="images/페이셜 트리트먼트 에센스.png">
							<dl>
								<dt>페이셜 트리트먼트 에센스</dt>
								<dd>용량:230ml<br>가격:219000원<br>SK-II</dd>
							</dl>
						</a>
					</li>
				</div>
				<div>
				<ul class="skinlist">
					<li>
						<a href="">
							<img src="images/에뛰드 순정 약산성 휩 클렌저.png">
							<dl>
								<dt>에뛰드 순정 약산성 휩 클렌저</dt>
								<dd>용량: 150ml<br> 가격: 11,000원<br>에뛰드</dd>
							</dl>
						</a>
                    </li>
				</div>
				<div>
				<ul class="skinlist">
					<li>
						<a href="">
							<img src="images/아보카도 리치 토너.png">
							<dl>
								<dt>아보카도 리치 토너</dt>
								<dd>용량: 160ml<br> 가격: 18,000원<br>스킨푸드</dd>
							</dl>
						</a>
					</li>
				</div>
				
	 <!--  <%
    // 5단계 num, subject, name, date, readcount 열 가져오기
 while(rs.next()){
	%>
	<div>
		<ul class="skinlist">
		<li>
			<a href="<%=rs.getString("skinName") %>.jsp">
			<img src="images/<%=rs.getString("skinName") %>.png">
			<dl>
				<dt><%=rs.getString("skinName") %></dt>
				<dd>용량:<%=rs.getString("skinM1") %><br>가격:<%=rs.getString("skinPrice") %>
				<br><%=rs.getString("skinBrand") %></dd>
			</dl>
			</a>
		</li>
	</div>
	<%
	}
	%> -->
		</section>
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