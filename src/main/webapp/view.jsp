<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String query = "select * from student";

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atme", "root", "");

System.out.println("Connection Established successfully");

Statement st = con.createStatement();

ResultSet rs = st.executeQuery(query);

while(rs.next())
{
	String name = rs.getString("name");
	String usn =rs.getString("usn");
	String branch=rs.getString("branch");
	int year=rs.getInt("year");
    out.println(name +"\t"+usn+"\t"+branch+"\t"+year);
}

st.close(); 

con.close();   %>

</body>
</html>