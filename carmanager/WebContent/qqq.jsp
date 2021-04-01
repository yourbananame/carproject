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
text-align:center;
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
h1{
color:blue;
}
table{
width:100%;
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
<br>
<font size=6>부품정보 LIST</font><br><br>
<table border=1>
<tr>
<th>부품코드</th>
<th>부품명</th>
<th>모델명</th>
<th>규격</th>
<th>단위</th>
<th>매입단가</th>
<th>매출단가</th>
<th>메모</th>
</tr>
<%@ include file="db2.jsp" %>
<% 
PreparedStatement pstmt=null;
ResultSet rs=null;
String sql="select * from parttbl";
pstmt=conn.prepareStatement(sql);

rs=pstmt.executeQuery();
while(rs.next()){
   %>
<tr class="v">
   <td><%=rs.getString("partCode") %></td>
   <td><%=rs.getString("partName") %></td>
   <td><%=rs.getString("model") %></td>
   <td><%=rs.getString("standard") %></td>
   <td><%=rs.getString("unit") %></td>
   <td><%=rs.getString("purchase") %></td>
   <td><%=rs.getString("sales") %></td>
   <td><%=rs.getString("memo") %></td>
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