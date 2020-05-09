<html>
        <style>
        .back{
        font-size:40px;
        font-family:sans-serif;
        color:red;
        font-wieght:bold;
        }
        .a{
            text-decoration:none;
            color:white;
        }
        .mytheme{
            width:10%;
            height:40px;
            background-color:skyblue;
            color:white;
            font-family:sans-serif;
            font-size:bold;
            font-size:20px;
            border-radius:30px;
            
        }
        .mytheme:hover{
            background-color:red;
            color:black;
        }
        </style>
    <body background="back.jpg">
        
       <table width="100%" style="background-color:white;border-radius:30px;opacity:0.7">
           <tr align="center">
           <tr><td><img src="giphy.gif" width="300px" height="150"></td>
               <td class="back">TIFFIN BOX CENTER</td>
           </tr>
       </table>
        <table width="100%" width="60px" height="50px" style="background-color:black;border-radius:440px">
            <tr align="center">
                <td class="mytheme"><a href="AdminMenu.jsp">Home</a></td>
                <td class="mytheme"><a href="ViewUser.jsp">View All Users</a></td>
                <td class="mytheme"><a href="ProductPage.jsp">view products</a></td>
                <td class="mytheme"><a href="AdminPasswordChange.jsp">Password Setting</a></td>
                <td class="mytheme"><a href="CommonLoginPage.jsp">Logout</a></td>                  
            </tr>  
        </table>
       
        <%@ page import="java.sql.Connection"%>
        <%@ page import="java.sql.DriverManager"%>
        <%@ page import="java.sql.PreparedStatement"%>
        <%@ page import="java.sql.ResultSet,java.util.ArrayList"%>
        
          <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
          PreparedStatement st = con.prepareStatement("select * from usersignuptable");
          ResultSet rs=st.executeQuery();
          ArrayList list1=new ArrayList();
          ArrayList list2=new ArrayList();
          ArrayList list3=new ArrayList();
          ArrayList list4=new ArrayList();
          ArrayList list5=new ArrayList();
          ArrayList list6=new ArrayList();
          ArrayList list7=new ArrayList();
          while(rs.next())
          {
              list1.add(rs.getString(1)); //0,1,2,3
              list2.add(rs.getString(2));
              list3.add(rs.getString(4));
              list4.add(rs.getString(5));
              list5.add(rs.getString(6));
              list6.add(rs.getString(7));
              list7.add(rs.getString(8));
              }
              %>
              
              <div style="margin-left:60px;width:90%;background-color:white;height:800pc;opaciy:0.7;border-radius:50px" border="1">
                  <table width="100%" cellspacing="10">
                      <tr bgcolor="yellow" align="center">
                          <td>Name</td>
                          <td>ID</td>
                          <td>DOB</td>
                          <td>Contact</td>
                          <td>Mail Id</td>
                          <td>Address</td>
                          <td>City</td>
                      </tr>
                      <%for(int i=0;i<list1.size();i++)
                      {
                          %>
                          <tr>
                      <td><%=list1.get(i)%></td>
                      <td><%=list2.get(i)%></td>
                      <td><%=list3.get(i)%></td>
                      <td><%=list4.get(i)%></td>
                      <td><%=list5.get(i)%></td>
                      <td><%=list6.get(i)%></td>
                      <td><%=list7.get(i)%></td>
                          </tr>
                          <%}%>
                  </table>
                  
                  <br><br><br><br><br><br>
                  <form action="DeleteUserCode.jsp">
                 
                      <input type="text" name="uid" placeholder="enter id here" style="width:20%;height:40px;border-radius:30px;background-color:orange">
                      <input type="submit" value="DLETE" style="width:10%;height:40px;border-radius:20px;background-color:red;color:white;font-size:10px">
                      </form>
                       </div>           
            </body>
</html>