<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>

<%
    String id = request.getParameter("uid");
    String oldPwd = request.getParameter("oldPass");
    String newPwd = request.getParameter("newPass");
    String cNewPwd = request.getParameter("cNewPass");
    
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
          PreparedStatement st = con.prepareStatement("select * from usersignuptable where userid=? and password=?");
          st.setString(1,id);
          st.setString(2,oldPwd);
          ResultSet rs = st.executeQuery();
          if(rs.next())
          {
              
              if(newPwd.equals(cNewPwd))
              {
           PreparedStatement st1= con.prepareStatement("update usersignuptable set password=? where userid=?");
           st1.setString(1,newPwd);
           st1.setString(2,id);
           st1.executeUpdate(); 
           response.sendRedirect("LoginPage.html");
           }
          else
           {
               out.println("new  password and confirm new password are not same"); 
           }
}
          else
          {
              out.println("invalid  id/old password");
           }
         %>
            