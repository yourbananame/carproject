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
<script>
function check1(){
    if(document.form.id.value==""){
        alert("아이디를 입력하세요.");
        document.form.id.focus();
        
    }
        
            if(document.form.name.value==""){
                alert("이름을 입력하세요.");
                document.form.name.focus();
                
            }
                
                    if(document.form.pass1.value==""){
                        alert("비밀번호를 입력하세요.");
                        document.form.pass1.focus();
                        
                    }
                       
                            if(document.form.pass2.value==""){
                                alert("비밀번호 확인을 입력하세요.");
                                document.form.pass2.focus();
                                
                            }
                             
                                    if(document.form.radio.value==""){
                                        alert("성별을 체크하세요.");
                                        document.form.radio.focus();
                                        
                                    }
                                    if(document.form.email.value==""){
                                        alert("이메일을 입력하세요.");
                                        document.form.email.focus();
                                        
                                    }
                                    if(document.form.number.value==""){
                                        alert("핸드폰을 입력하세요.");
                                        document.form.number.focus();
                                        
                                    }
                                    if(document.form.number2.value==""){
                                        alert("전화를 입력하세요.");
                                        document.form.number2.focus();
                                        
                                    }
                                    if(document.form.home.value==""){
                                        alert("주소를 입력하세요.");
                                        document.form.home.focus();
                                        
                                    }
                                    if(document.form.text3.value==""){
                                        alert("차량번호를 입력하세요.");
                                        document.form.text3.focus();
                                        
                                    }
                                    if(document.form.text4.value==""){
                                        alert("차량종류를 입력하세요.");
                                        document.form.text4.focus();
                                        
                                    }
                                    document.form.submit();
                                    
}            
function id_chk(){ 
window.open("id_dup.jsp?id="+document.form.id.value,target="_self");
}
</script>
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
<section></section>
<aside>
<input type="button" name="고객등록" value="고객등록"><br>
<input type="button" name="정비등록" value="정비등록"><br>
<a href="ddd.jsp"><input type="button" name="부품등록" value="부품등록"></a><br>
<input type="button" name="현재위치" value="현재위치">
</aside>
<footer>Copyrignt (c) 2018 yangjung All rights reserved <img src="images/googleplus-icon.png" width="40px" height="40px" align="right"><img src="images/twitter.gif" align="right"><img src="images/facebook.gif" align="right"></footer>
</body>
</html>