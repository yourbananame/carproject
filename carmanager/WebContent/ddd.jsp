<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<script>
function check1(){
    if(document.form.partCode.value==""){
        alert("부품번호를 입력하세요..");
        document.form.partCode.focus();
        
    }
        
            if(document.form.partName.value==""){
                alert("부품명을 입력하세요.");
                document.form.partName.focus();
                
            }
                
                    if(document.form.model.value==""){
                        alert("모델명를 입력하세요.");
                        document.form.model.focus();
                        
                    }
                       
                            if(document.form.standard.value==""){
                                alert("규격을 입력하세요.");
                                document.form.standard.focus();
                                
                            }
                             
                                    if(document.form.unit.value==""){
                                        alert("단위를 입력하세요.");
                                        document.form.unit.focus();
                                        
                                    }
                                    if(document.form.purchase.value==""){
                                        alert("매입가를 입력하세요.");
                                        document.form.purchase.focus();
                                        
                                    }
                                    if(document.form.sales.value==""){
                                        alert("매출가를 입력하세요.");
                                        document.form.sales.focus();
                                        
                                    }
                                    if(document.form.memo.value==""){
                                        alert();
                                        document.form.memo.focus();
                                    }
                                    document.form.submit();
                                    
}  
</script>
</head>
<body>
<h1><a href="head.jsp">카센터(붕붕이 나라)</a></h1>
<header><font size="2"">회원ID: <input type="text" name="id" size="10">비밀번호: <input type="password" name="pass" size="10"> <input type="button" name="login" value="로그인"><a href="#">|<a href="d0329.jsp">회원가입</a></font></header>
<nav>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="sss.jsp">회사소개</a>
<a href="qqq.jsp">부품정보</a>
<a href="aaa.jsp">고객정보</a>
<a href="#">견적관리</a>
<a href="#">정비이력</a>
<a href="#">게시판</a>
</nav>
<section>
<form name="form" method="post" action="db3.jsp">
<font size=6 >차량 부품 관리</font>
<table border=1>
<tr><td>부품번호</td><td colspan=3><input type="text" name="partCode" size="133"></td></tr>
<tr><td>부품명</td><td colspan=3><input type="text" name="partName" size="133"></td></tr>
<tr><td>모델명</td><td colspan=3><input type="text" name="model" size="133"></td></tr>
<tr><td>규격</td><td colspan=3><input type="text" name="standard" size="133"></td></tr>
<tr><td>단위</td><td colspan=3><input type="text" name="unit" size="133"></td></tr>
<tr><td>매입가</td><td><input type="text" name="purchase" size="60"></td><td>매출가</td><td><input type="text" name="sales" size="60"></td></tr>
<tr><td>메모</td><td colspan=3><textarea cols="135" rows="7" name="memo"></textarea></td></tr>
<tr><td colspan=4><input type="button"  value="저장하기" onclick="javascript:check1();"> <input type="reset" value="다시작성"></td></tr>

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