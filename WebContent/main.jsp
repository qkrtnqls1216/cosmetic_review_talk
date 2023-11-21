<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@page import="user.UserDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>메인페이지</title>
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
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
	 function keyword_check(){
	  if(document.search.keyword.value==''){ //검색어가 없을 경우  
	  alert('검색어를 입력하세요'); //경고창 띄움 
	  document.search.keyword.focus(); //다시 검색창으로 돌아감 
	  return false; 
	  }
	  else return true;
	 }
</script>
</head>
<body>
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
                 <form name="search" method = "get"  action ="skin.jsp" onsubmit="return keyword_check()">
                    <input type="text" name="keyword" placeholder="검색하시오" class="searchbox">
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
        <div id="advertisement">
            <div class="owl-carousel owl-theme">
                <div class="item"><a href=""><img src="images/ad1.png" alt="ad1"></a></div>
                <div class="item"><a href=""><img src="images/ad2.png" alt="ad2"></a></div>
                <div class="item"><a href=""><img src="images/ad3.png" alt="ad3"></a></div>
            </div>
        </div>
        <section id="maincont1" class="maincont">
            <h2>이달의 추천!</h2>
            <div>
				<ul class="monthpicks">
					<li>
						<dl>
                            <dd><a href=""><img src="images/base1.png"></a></dd>
                            <dd class="fsize"><a href="">글로우 커버 쿠션</a></dd>
                        </dl>
					</li>
					<li>
						<dl>
                            <dd><a href=""><img src="images/eyes1.png"></a></dd>
                            <dd class="fsize"><a href="">아이크러쉬 섀도우 팔레트</a></dd>
                        </dl>
					</li>
                    <li>
						<dl>
                            <dd><a href=""><img src="images/페이셜 트리트먼트 에센스.png"></a></dd>
                            <dd class="fsize"><a href="">SK2 페이셜트리트먼트에센스</a></dd>
                        </dl>
					</li>
                    <li>
						<dl>
                            <dd><a href=""><img src="images/페이셜 트리트먼트 클리어 로션.png"></a></dd>
                            <dd class="fsize"><a href="">SK2 페이셜트리트먼트클리어로션</a></dd>
                        </dl>
                    </li>
                    <li>
						<dl>
                            <dd><a href=""><img src="images/에뛰드 순정 약산성 휩 클렌저.png"></a></dd>
                            <dd class="fsize"><a href="">에뛰드순정 약산성휩클렌저</a></dd>
                        </dl>
                    </li>
                    <li>
						<dl>
                            <dd><a href=""><img src="images/아보카도 리치 토너.png"></a></dd>
                            <dd class="fsize"><a href="">스킨푸드 아보카도리치토너</a></dd>
                        </dl>
					</li>
				</ul>
			</div>
        </section>
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