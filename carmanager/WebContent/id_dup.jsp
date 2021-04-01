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
<%
    Connection conn=null;
    try{
    String jdbcDriver="com.mysql.cj.jdbc.Driver";
    String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
    String user="root";
    String pass="1234";
    Class.forName(jdbcDriver);
    conn=DriverManager.getConnection(jdbcurl,user,pass);
    System.out.println("데이터베이스 연결 성공");
    }catch(SQLException e){
    	e.printStackTrace();
    	System.out.println("데이터베이스 연결 실패");
    }
    %>
    
<%
//데이터베이스 연결관련 변수 선언
Connection Conn = null;
PreparedStatement pstmt = null;
String sql="";
ResultSet rs = null;
String rst = "";
String msg = "";

String jdbc_driver = "com.mysql.cj.jdbc.Driver";
String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
System.out.println("error");
try{
	// JDBC 드라이버 로드
	Class.forName(jdbc_driver);
	
	conn = DriverManager.getConnection(jdbc_url,"root","1234");
	
	String id = request.getParameter("id");
	sql = "select * from car_member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
%>
<script type="text/javascript">
alert("중복 아이디 \n 이미 등록된 아이디입니다.");
history.back();
</script>
<%
	}else
	{
		%>
		<script type="text/javascript">
		alert("사용 가능한 아이디입니다.")
		history.back();
		</script>
		<%
	}
}catch(SQLException e) {
	e.printStackTrace();
	e.getMessage();
}
%>
</body>
</html>