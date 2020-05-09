<html>
    <style>
        .back{
        font-size:70px;
        font-family:sans-serif;
        color:red;
        font-weight:bold;
        }
        .mytheme{
            width:10%;
            height:40px;
            background-color:skyblue;
            color:white;
            font-family:sans-serif;
            font-size:bold;
            font-size:20px;
            border-radius:330px;
            
        }
        .mytheme:hover{
            background-color:red;
            color:black;
        }
 </style>
         
              <body background="back.jpg">
        
               <font color="black" style="font-size:18px"> Welcome <%=session.getAttribute("CALL")%></font>
                
               <table width="100%" style="background-color:white;border-radius:30px;opacity:0.7">
               <tr align="center">
               <tr><td><img src="giphy.gif" width="300px" height="150"></td>
               <td class="back">TIFFIN BOX CENTER</td>
               </tr>
               </table>
   
                <table width="100%" width="60px" height="50px" style="background-color:black;border-radius:440px">
                <tr align="center">
                <td class="mytheme"><a href="UserMenu.jsp">Home</a></td>
                <td class="mytheme"><a href="UserAboutPage.html">About</a></td>
                <td class="mytheme"><a href="UserPasswordChange.jsp">Password Setting</a></td>
                <td class="mytheme"><a href="mailto:">Feedback</a></td>
                <td class="mytheme"><a href="mailto:sabhi8226@gmail.com">Query</a></td>                         
                </tr>
                </table>
      
                <table>
                <tr>
                <td><td><img src="Welcome.gif"></td>
                </tr>
              
          </table>
      </body>
 </html>