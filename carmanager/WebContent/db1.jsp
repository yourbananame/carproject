<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbcorn.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String name=request.getParameter("name");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
String radio=request.getParameter("radio");
String email=request.getParameter("email");
String number=request.getParameter("number");
String number2=request.getParameter("number2");
String home=request.getParameter("home");
String text3=request.getParameter("text3");
String text4=request.getParameter("text4");
System.out.println("id : "+id);
System.out.println("name : "+name);
System.out.println("pass1 : "+pass1);
System.out.println("pass2 : "+pass2);
System.out.println("radio : "+radio);
System.out.println("email : "+email);
System.out.println("number : "+number);
System.out.println("number2 : "+number2);
System.out.println("home : "+home);
System.out.println("text3 : "+text3);
System.out.println("text4 : "+text4);

PreparedStatement pstmt=null;
try {
String sql="insert into car_member(id,name,pass1,pass2,radio,email,number,number2,home,text3,text4) value(?,?,?,?,?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, pass1);
pstmt.setString(4, pass2);
pstmt.setString(5, radio);
pstmt.setString(6, email);
pstmt.setString(7, number);
pstmt.setString(8, number2);
pstmt.setString(9, home);
pstmt.setString(10, text3);
pstmt.setString(11, text4);
pstmt.executeUpdate();
System.out.println("저장 완료");

}catch(SQLException e){
	e.printStackTrace();
	System.out.println("저장 실패");
}

%>
</body>
</html>