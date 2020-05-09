 <%@ page import = "java.sql.Connection"%>
 <%@ page import = "java.sql.DriverManager"%>
 <%@ page import = "java.sql.PreparedStatement"%>
 <%@ page import = "java.sql.ResultSet"%>

<%
    String name = request.getParameter("fNM");
    String userId = request.getParameter("uid");
    String pwd = request.getParameter("pass");
    String dOB = request.getParameter("dob");
    String contact = request.getParameter("cont");
    String mailId = request.getParameter("mail");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
          PreparedStatement st = con.prepareStatement("insert into usersignuptable values(?,?,?,?,?,?,?,?)");
          st.setString(1,name);
          st.setString(2,userId);
          st.setString(3,pwd);
          st.setString(4,dOB);
          st.setString(5,contact);
          st.setString(6,mailId);
          st.setString(7,address);
          st.setString(8,city);
          st.executeUpdate();
          response.sendRedirect("LoginPage.html");
          %>