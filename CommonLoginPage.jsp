<html>
    
    <script>
          function call()
          {
          if(frm.uid.value==0)
          alert("id is required");
          if(frm.pass.value==0)
          alert("password is required");
          if(frm.post.value==0)
          alert("post is required");
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
                <td class="mytheme"><a href="CommonLoginPage.jsp">Home</a></td>
                <td class="mytheme"><a href="AboutPage.html">About</a></td>
                <td class="mytheme"><a href="ContactPage.html"></a></td>
             </tr>
           </table>
            <br>
           <marquee scrollamount="20" behavior="alternate">
           <font color="white" size:4px>   kbddhsd dvfk kfhdkd hf  fjhfcc c kdsf ekjf ekfbewukf wkw wkfkhk uehe wuhe uf  ew </font>
           </marquee>
    
            <div style="margin-left:50px;width:90%;background-color:white;height:1000px;opacity:0.7;border-radius:40px;">
            <table align="center">
            <tr>
                
                <td width="50%"><marquee scrollamount="10" behavior="alternate" direction="left">
                <img src="imge.png">
                </marquee></td>

              <td width="50%"><marquee scrollamount="10" behavior="alternate" direction="right">
              <img src="imge.png">
              </marquee></td>
              </table>
        
             <form name="frm" action = "SuperLoginCode.jsp" onSubmit="return call()" method="post">
             <table align="center" width="50%" cellspacing="10" cellpading="1" style="background-color:lightblue;border-radius:30px;opacity:0.9;width:20%;height:10%" border="0">
        
             <tr align="center" width="20%" height="20%">
                <td colspan="2"><img src="loginicon.png"></td>
            </tr>  
            
            <tr align="center">
            <td style="font-size:20px">ID</td>
            </tr>
            <tr align="center">
            <td><input type="text" name="uid" placeholder="enter id here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
            </tr>

              <tr align="center">
              <td style="font-size:20px">PASSWORD</td>
              </tr>
           
              <tr align="center">
              <td><input type="password" name ="pass" placeholder="enter password here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
              </tr>

             <tr align="center">
             <td style="font-size:20px">POST</td>
             </tr>
           
             <tr align="center">
             <td><input type="text " name ="post" placeholder="enter password here" style="width:50%;height:40px;border-radius:30px;background-color:orange"></td>
             </tr>
     
             <tr align="center"> 
             <td><input type="submit" value="login" style="width:20%;height:30px;border-radius:30px;background-color:orange"></td> 
             </tr>
            <tr align="center"> 
             <td><input type="reset" value="reset" style="width:20%;height:30px;border-radius:30px;background-color:orange"></td> 
             </tr>
             
              </table>
            </form>        
         </div>
      </body>
</html>