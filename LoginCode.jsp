<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>

<%
    String id = request.getParameter("uid");
    String pwd = request.getParameter("pass");
    
    
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
          PreparedStatement st = con.prepareStatement("select *from usersignuptable where userid=? and password=?");
          st.setString(1,id);
          st.setString(2,pwd);
          ResultSet rs = st.executeQuery();
          if(rs.next())
          {
              Cookie ck=new Cookie("TiffinBoxCentre.com",id);
              ck.setMaxAge(100000);
              response.addCookie(ck);
                      
              session.setAttribute("CALL",id);      
              response.sendRedirect("UserMenu.jsp");
               }
             else
              {
                   out.println("invalid  id or password");              
                 }
    %>
            