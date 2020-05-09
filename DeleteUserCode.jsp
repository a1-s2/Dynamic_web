<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>

<%
          String id = request.getParameter("uid");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
          PreparedStatement st = con.prepareStatement("delete from usersignuptable where userid=?");
          st.setString(1,id);
          st.executeUpdate();
          response.sendRedirect("ViewUser.jsp");    
         %>
            