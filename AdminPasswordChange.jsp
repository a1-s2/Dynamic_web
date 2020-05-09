<html>
    
   <script>
          function call()
          {
          if(frm.uid.value==0)
          alert("Id is required");
          if(frm.oldPass.value==0)
          alert("Old password is required");
          if(frm.newPass.value==0)
          alert("New password is required");
          if(frm.cNewPass.value==0)
          alert("Confirm new password is required");
}
</script>
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
            color:white;
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
                <td class="mytheme"><a href="ComplainPage.jsp">View Complain</a></td>
                <td class="mytheme"><a href="ProductPage.jsp">View Product</a></td>
                <td class="mytheme"><a href="AdminPasswordChange.jsp">Password Setting</a></td>
                <td class="mytheme"><a href="CommonLoginPage.jsp">Logout</a></td>
            </tr>
        </table>
        <form name="frm" action="AdminPasswordCode.jsp" onSubmit="call()" method="get">
            
    <table align="center" width="100%" cellspacing="5" cellpading="1" style="background-color:lightblue;border-radius:30px;opacity:0.9;width:50%;height:40%" border="0">
        
              <tr align="center">
            <td style="font-size:40px">PASSWORD CHANGE FORM</td>
              </tr>

              <tr align="center">
            <td style="font-size:20px">ID</td>
        </tr>
        <tr align="center">
            <td><input type="text" name="uid" placeholder="enter id here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
            </tr>
              
        <tr align="center">
            <td style="font-size:20px">OLD PASSWORD</td>
        </tr>
        <tr align="center">
            <td><input type="text" name="oldPass" placeholder="enter old password here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
            </tr>
            
             <tr align="center">
            <td style="font-size:20px">NEW PASSWORD</td>
        </tr>
        <tr align="center">
            <td><input type="text" name="newPass" placeholder="enter new password here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
            </tr>
            
        <tr align="center">
            <td style="font-size:20px">CONFIRM NEW PASSWORD</td>
        </tr>   
        </tr>
        <tr align="center">
            <td><input type="text" name="cNewPass" placeholder="enter new password here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
            </tr>
            
        <tr align="center"> 
            <td><input type="submit" value="Change" style="width:20%;height:40px;border-radius:30px;background-color:orange"></td> 
          </tr>
          
          <tr align="center"> 
            <td><input type="reset" value="reset" style="width:20%;height:40px;border-radius:30px;background-color:orange"></td> 
          </tr>
  
           
            </table>
        </form>
        </body>
</html>