<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!-- 전역변수 선언 및 입력정보 추출 -->
<%
// 입력정보 한글 처리
request.setCharacterEncoding ("utf-8");
// 사용자 입력정보 추출
String id = request.getParameter("id");
String passwd = request.getParameter("pass");
String name = "";
// DB 관련 객체/변수
Connection         conn  = null;
PreparedStatement pstmt = null;
ResultSet         rs  = null;
String         sql = "";
// 데이터베이스 연결관련정보를 문자열로 선언
String jdbc_driver = "com.mysql.cj.jdbc.Driver";
String jdbc_url  = "jdbc:mysql://127.0.0.1/yangjung?serverTimezone=UTC";

try {
//JDBC 드라이버 로드
Class.forName (jdbc_driver);
// 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
conn = DriverManager.getConnection(jdbc_url,"root","1234");
// Connection 클래스의 인스턴스로 부터 SQL 문 작성을 위한 Statement 준비
// 등록된 아이디의 여부 검사
sql = "select * from car_member where id =?";
pstmt = conn.prepareStatement (sql);
pstmt.setString(1, id);
//pstmt.setString(2,passwd);
rs = pstmt.executeQuery();

System.out.println(id+" "+passwd);
// 등록된 아이디의 경우, 성명 추출
if(rs.next()){
// 로그인 정보 설정
String userID=rs.getString("id");
String userPWD=rs.getString("pass1");
String userName=rs.getString("name");
String pwd=rs.getString("pass1");
if(passwd.equals(pwd)){%>
<%=rs.getString("name") %>님 환영합니다.<%
session.setAttribute("s_Name", userName);
session.setAttribute("s_ID", userID);
response.sendRedirect("index.jsp");
}
else{
	%>
	<script type="text/javascript">
	alert ("패스워드 오류 \n패스워드를 다시 입력하세요.");
	history.back();
	</script>
	<%
	}
	}else{%>
	<<script type="text/javascript">
alert("ID 오류\nID를 다시 입력하세요.");
history.back();
</script>
<%}
} catch(SQLException e) {
out.println(e.getMessage());
} finally {
if(rs  !=null)
rs.close();
if(pstmt  !=null)
pstmt.close();
if(conn  !=null)
conn.close();
}
%>