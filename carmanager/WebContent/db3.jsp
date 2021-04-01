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
<%@ include file="dbcorn2.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
String partCode=request.getParameter("partCode");
String partName=request.getParameter("partName");
String model=request.getParameter("model");
String standard=request.getParameter("standard");
String unit=request.getParameter("unit");
int purchase= Integer.parseInt(request.getParameter("purchase"));
int sales=Integer.parseInt(request.getParameter("sales"));
String memo=request.getParameter("memo");
System.out.println("partCode : "+partCode);
System.out.println("partName : "+partName);
System.out.println("model : "+model);
System.out.println("standard : "+standard);
System.out.println("unit : "+unit);
System.out.println("purchase : "+purchase);
System.out.println("sales : "+sales);
System.out.println("memo : "+memo);

PreparedStatement pstmt=null;
try {
String sql="insert into parttbl(partCode,partName,model,standard,unit,purchase,sales,memo) value(?,?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, partCode);
pstmt.setString(2, partName);
pstmt.setString(3, model);
pstmt.setString(4, standard);
pstmt.setString(5, unit);
pstmt.setInt(6, purchase);
pstmt.setInt(7, sales);
pstmt.setString(8, memo);
pstmt.executeUpdate();
System.out.println("저장 완료");

}catch(SQLException e){
	e.printStackTrace();
	System.out.println("저장 실패");
}

%>
</body>
</html>