<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>

<%
    String id = request.getParameter("uid");
    String pwd = request.getParameter("pass");
    String post = request.getParameter("post");
    
    
        
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
          PreparedStatement st = con.prepareStatement("select *from adminlogintable where adminid=? and password=?");
          st.setString(1,id);
          st.setString(2,pwd);           
          ResultSet rs = st.executeQuery();
          if(rs.next())
          {
              
              if(post.equals("Admin"))
              {
              response.sendRedirect("AdminMenu.jsp");            
              }
              if(post.equals("Manager"))
              {
               response.sendRedirect("ManagerMenu.jsp");
         }
      }
        else
           {
               out.println("Invalid id/Password");
           }
          %>
          