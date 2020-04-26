<%-- 
    Document   : index
    Created on : 25 Apr, 2020, 10:16:38 AM
    Author     : SUDHANSHU YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, intial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.js"></script>
             
                 <jsp:include page="header.jsp"/>
    </head>
    <body>
         <jsp:include page="navigationbar1.jsp"/>
         <div class="container" style="margin-top:100px"><!--container se margin top ka distance...-->
             <div class="row">
                 <div class="col-sm-3">
                     
                 </div><!--col-sm-3 end-->
                 <div class="col-sm-6">
                     <h1 class="text-center" style="color: purple">Admin Login</h1>
                     <form method="post" action="mycontrol.jsp">
                         <input type="hidden" name="page" value="adminlogin">
                         <div class="form-group" >
                             <label>Username</label>
                             <input type="text" class="form-control" placeholder="Username" name="adminname"></br>
                             
                             <label>Username</label>
                             <input type="password" class="form-control" placeholder="Password" name="password"></br>
                             
                             <input type="submit" value="login" class="btn btn-primary" >
                         </div><!--form group-->
                         
                     </form>
                 </div><!--col-sm-3 end-->
                 
             </div><!--row end-->
             
         </div><!--container end-->
         
    </body>
</html>
