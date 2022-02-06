
<!DOCTYPE html>
<html>
<body bgcolor = "wheat">
<%@page import="java.sql.*"%>
<table align="center" width="800",height="400" border="2">
<tr><td>Id</td><td>Name</td><td>Designation</td><td>Email</td><td>Phone</td></tr>
<%
Connection connection = null;
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/mondee";
connection = DriverManager.getConnection(url,"Amrutha","Amrutha@890");
int id = (Integer)session.getAttribute("mid");
PreparedStatement ps = connection.prepareStatement("select * from manager where id=?");
ps.setInt(1,id);
ResultSet rs = ps.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getInt(1) %></td><td><%=rs.getString(2) %><td><%=rs.getString(4)%></td>
</td><td><%=rs.getString(5) %><td><%=rs.getString(6)%></td>
</tr>
<%} %>
</table>
</body>
</html>