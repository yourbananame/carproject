<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
header{
width: 100%;
height: 10%;
font-weight: bold;
text-align:right;
}
nav{
width:100%;
height:5%;
background-color: aqua;
font-weight: bold;
font-size: 20px;
line-height:50px;
}
aside{
width:20%;
height:70%;
float:Left;
font-weight: bolder;
text-align:center;
}
section{
width:80%;
height:70%;
float:Left;
background-repeat:no-repeat;
}
footer{
background-color:grey;
width:100%;
height:15%;
clear:both;
font-weight: bold;
line-height:100px;
}
html,body{
width:100%;
height:100%;
}
*{
padding:0%;
margin:0%;
}
a{
color:black;
text-decoration: none;
padding: 0 15px;
}
h1{
color:blue;
}
.z{
color:red;
font-weight: bold;
}
.w{
color:blue;
align:right;
}
h1 a{
color:blue;
}
</style>
</head>
<body>
<h1><a href="head.jsp">카센터(붕붕이 나라)</a></h1>
<header><font size="2">회원ID: <input type="text" name="id" size="10">비밀번호: <input type="password" name="pass" size="10"> <input type="button" name="login" value="로그인"><a href="#">|<a href="d0329.jsp">회원가입</a></font></header>
<nav>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sss.jsp">회사소개</a>
<a href="qqq.jsp">부품정보</a>
<a href="aaa.jsp">고객정보</a>
<a href="#">견적관리</a>
<a href="#">정비이력</a>
<a href="#">게시판</a>
</nav>
<section>
<br>
<h3>반갑습니다.<br><br>
카센터 붕붕이나라입니다.</h3><br>
<hr>
<br>
<img src="images/car.png" align="left">
<font size="3">안녕하십니까?<br>
카센터 <font size="3" class="z">붕붕이나라</font>는 부산시 부산진구 양정동에<br>
위치하고있습니다.<br>
저희 붕붕이나라는 고객의 다양한 요구에 부합되는<br>
최고의 서비스와 경쟁력 있는 가격으로 고객 만족을<br>
실현하기 위해 모든 임직원이 다함께 노력할 것을<br>
약속 드립니다.<br>
항상 한발 앞서가는 고객만족의 경영을 실천하며,<br>
고객과의 약속을 가장 중요시 하겠습니다.<br>
고객 여러분의 끊임없는 격려와 관심으로 성원해 주시길 부탁드립니다.
<br>
<br>
<br>
<font size=5 class="w">감사합니다.</font>

</section>
<aside>
<input type="button" name="고객등록" value="고객등록"><br>
<input type="button" name="정비등록" value="정비등록"><br>
<a href="ddd.jsp"><input type="button" name="부품등록" value="부품등록"></a><br>
<input type="button" name="현재위치" value="현재위치">
</aside>
<footer>Copyrignt (c) 2018 yangjung All rights reserved <img src="images/googleplus-icon.png" width="40px" height="40px" align="right"><img src="images/twitter.gif" align="right"><img src="images/facebook.gif" align="right"></footer>
</body>
</html>