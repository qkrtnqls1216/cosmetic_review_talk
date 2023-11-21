<%@page import="java.sql.*" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" type="text/css" href="css/skindetail1.css" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/main.js"></script>
<title>리뷰작성페이지</title>
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
String sql="select * from list order by 글번호 desc";
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
                 <form>
                    <input type="text" name="search" placeholder="검색하시오">
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
                        <li><a href="login.jsp">로그인</a></li>
                        <li><a href="join.jsp">회원가입</a></li>
                    </ul>
                </div>
                <%
                } else { 
                %>
                <div class="location">
                    <ul>
                        <li><a href="logoutAction.jsp">로그아웃</a></li>
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
                            <li><a href="">베이스 메이크업</a></li>
                            <li><a href="">아이 메이크업</a></li>
                            <li><a href="">립</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
		<section id="content1" class="content">
			<div class="skindetail">
				<a href="https://www.sk2.co.kr/kr/product.aspx?name=facial-treatment-clear-lotion">
					<img src="images/페이셜 트리트먼트 클리어 로션.png">
				</a>
					<dl>
						<h2>페이셜 트리트먼트 클리어 로션<br>용량: 160ml / 가격: 92,000원<br>SK-II</h2>
						<dt class="gcomponent"><착한성분></dt>
						<dd class="gcomponentparts">살리실릭애씨드, 부틸렌글라이콜, 글리세린, 소듐하이알루로네이트, 시트릭애씨드, 락틱애씨드</dd>
						<dt class="bcomponent"><위험성분></dt>
						<dd class="bcomponentparts">살리실릭애씨드, 시트릭애씨드, 락틱애씨드</dd>
					</dl>
			</div>
		</section>
		<section class="content2">
		    	<h2 >Review</h2>
				<%
		    // 5단계 num, subject, name, date, readcount 열 가져오기
		    while(rs.next()){ // 실행 결과 저장한 rs에 데이터 가져오기 및 존재할 시 true 리턴
		    	String userName=null;
		    	try{
			    	Statement stmt = con.createStatement();
			       	ResultSet infoRs=stmt.executeQuery("select userName from review.user where userID='"+rs.getString("아이디")+"';");	       	
			        infoRs.next();
			        userName=infoRs.getString(1);
		    	}catch(Exception e){
		    		e.printStackTrace();
		    	}
		    	%>
				<table style="/*argin-left: auto; margin-right: auto;*/width:100%; fram:void;">
				<colgroup>
				<col style="width:15%">
				<col style="width:15%">
				<col style="width:15%">
				<col style="width:15%">
				</colgroup>
				<tr>
					<td class="table_1">글번호</td>
					<td class="table_3" ><%=rs.getString("글번호") %></td>
					<td class="table_1">피부타입</td>
					<td class="table_3"><%=rs.getString("피부타입") %></td>
				</tr>
				<tr>
					<td class="table_1">닉네임</td>
				    <td colspan="4" class="table_3"><%= userName %></td>
				</tr>
				<tr>
					<td class="table_1" >제목</td>
					<td class="table_3" colspan="4"><%=rs.getString("제목") %></td> 
				</tr>
				<tr>
					<td class="table_1">사용후기</td>
				    <td colspan="4" class="table_3"><%=rs.getString("사용후기") %></td>
				</tr>
				<br>
				<%
				if(session.getAttribute("userID") != null && session.getAttribute("userID").equals(rs.getString("아이디"))){
				%>	
				<button class="del"><a href="deleteAction.jsp?글번호=<%=rs.getString("글번호")%>"><i class="fas fa-trash-alt"></i></a></button>&nbsp;
				<% 
				}
				%>
				<%
				if(session.getAttribute("userID") != null){
					%>
					<button class="report"><a href="reportAction.jsp?글번호=<%=rs.getString("글번호")%>"><i class="fas fa-exclamation-triangle"></i></button>
				<%
				}
				%>
				</table>
		    	<% 
		    } //while문 닫힘
		    %>
		         <%
            	if(session.getAttribute("userID")==null){
            %>
			    	<button class="write"><a href="login.jsp"><i class="fas fa-pencil-alt"></i></a></button>
			    	<%
			    	}else{
			    	%>
			    	<button class="write"><a href="review.jsp"><i class="fas fa-pencil-alt"></i></a></button>
			    	<%
			    	}
			 %>
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
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</body>
</html>