<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
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
font-weight: bold;


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
<font size=6>고객 LIST</font>
<table border=1>
<tr>
<th>고객ID</th>
<th>고객이름</th>
<th>자동차번호</th>
<th>자동차종류</th>
<th>핸드폰</th>
<th>전화번호</th>
<th>주소</th>
</tr>
<%@ include file="db2.jsp" %>
<% 
PreparedStatement pstmt=null;
ResultSet rs=null;
String sql="select * from car_member";
pstmt=conn.prepareStatement(sql);

rs=pstmt.executeQuery();
while(rs.next()){
	%>
<tr>
	<td><%=rs.getString("id") %></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("text3") %></td>
	<td><%=rs.getString("text4") %></td>
	<td><%=rs.getString("number") %></td>
	<td><%=rs.getString("number2") %></td>
	<td><%=rs.getString("home") %></td>
	<% }
	%>
	</tr>
	</table>
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