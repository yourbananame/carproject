<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<h1>고객관리</h1>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
text-align:center;
}
.a2{
text-align:center;
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


<form name="form" method="post" action="db1.jsp">
<table border="1">
<tr><td width="180" class="a2">아이디</td><td width="180" height="10" class="a1"><input type="text" name="id" size=40><input type="button" value="중복확인" onclick="javascript:id_chk()"></td></tr>
<tr><td class="a2">이름</td><td class="a1"><input type="text" name="name" size=40></td></tr>
<tr><td class="a2">비밀번호</td><td class="a1"><input type="password" name="pass1" size=40></td></tr>
<tr><td class="a2">확인비밀번호</td><td class="a1"><input type="password" name="pass2" size=40></td></tr>
<tr><td class="a2">성별</td><td class="a1"><input type="radio" name="radio" value="1"> 남 <input type="radio" name="radio" value="2"> 여</td></tr>
<tr><td class="a2">이메일</td><td class="a1"><input type="text" name="email" size=20>@ <select><option>naver.com</option><option>daum.net</option><option>gmail.com</option><option>nate.com</option></select></td></tr>
<tr><td class="a2">핸드폰</td><td class="a1"><select><option>010</option><option>011</option><option>017</option><option>019</option></select>- <input type="text" name="number">- <input type="text" name="number1"></td></tr>
<tr><td class="a2">전화</td><td class="a1"><input type="text" name="number2">- <input type="text" name="number3">- <input type="text" name="number4"></td></tr>
<tr><td class="a2">주소</td><td class="a1"><input type="text" name="home" size=90></td></tr>
<tr><td class="a2">차량번호</td><td class="a1"><input type="text" name="text3" size=40></td></tr>
<tr><td class="a2">차량종류</td><td class="a1"><input type="text" name="text4" size=40></td></tr>
<tr><td class="a2" colspan="2"><input type="button"  value="저장하기" onclick="javascript:check1();"> <input type="reset" value="다시작성"></td></tr>
</table>
</form>
</body>
</html>