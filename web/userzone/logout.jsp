<%-- 
    Document   : logout
    Created on : 7 Aug, 2019, 2:03:03 PM
    Author     : DELL
--%>
<%
    session.invalidate();
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      
        <meta name="viewport" content="width=500, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=0.86, maximum-scale=5.0, minimum-scale=0.86">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .bg-gradient{
                height: 60vh;
                width: 100%;
                margin: auto;
                
            }
            .innerdiv{
               
                margin: 100px auto!important;
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translate(-50%,-50%);
                padding-top: 40px;
            }
            
            .circle{
                margin: 100px auto!important;
                position: relative;
                width: 30vh;
                height: 30vh;
                background: linear-gradient(#33ccff,#ff0066);
                border-radius: 50%;
                animation: animate 0.5s linear infinite;
                
                
            }
            
            @keyframes animate
            {
                from {
                    transform: rotate(0deg);
                }
                to {
                 transform: rotate(360deg);   
                }
            }
            .circle:after{
                content: '';
                position: absolute;
                top: 35px;
                 right: 35px;
                 bottom: 35px;
                 left: 35px;
                 background: black;
                 border-radius: 50%;
                 
                      
            }
            .circle span{
                position: absolute;
                width: 100%;
                height: 100%;
                background: linear-gradient(#33ccff,#ff0066);
                border-radius: 50%;
            }
            .circle span:nth-child(1)
            {
                filter:blur(5px);
            }
             .circle span:nth-child(2)
            {
                filter:blur(10px);
            }
             .circle span:nth-child(3)
            {
                filter:blur(20px);
            }
             .circle span:nth-child(4)
            {
                filter:blur(55px);
            }
            
            
            .log{
                font-weight: 600;
                font-size: 40px;
            }
        </style>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",500);
            }
        </script>
    </head>
    <body onload="logout()">
        <div class="container mt-4 log text-center" >Thank you for reaching us.</div>
        <hr/>
        <br/>
        <div class="bg-gradient" >
            <div class="innerdiv" >
               
            </div>
            <div class="circle" >
                 
            </div>
        </div>
    </body>
</html>
