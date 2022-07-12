<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String user=  (String)session.getAttribute("email");
      if (user== null || user == "") {
        response.sendRedirect("../login.jsp");
    } else {

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>


        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" >

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


        <link href="css/style.css"  rel="stylesheet"/>
        <meta name="viewport" content="width=500, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=0.86, maximum-scale=5.0, minimum-scale=1.0">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume Builder</title>
        
        
    </head>
    <body >

        <section id="nav-bar" style="min-height: 80px;">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="landingpage.jsp"><span style="font-family: Arial Rounded MT;">RESUME BUILDER</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarNav">
                        <ul class="navbar-nav ms-auto">
<!--                            <li class="nav-item">
                                <a class="nav-link " href="foruser.jsp">For You</a>
                            </li>-->
                            <li class="nav-item">
                                <a class="nav-link" href="logout.jsp">Logout</a>
                            </li>



                        </ul>
                    </div>
                </div>
            </nav>
        </section>


        <!-- ---- Resume format Part ------->

        <section id="user_format">
            <div class="container text-center">
                <h4>Download Your resume by clicking download button below.. &nbsp;<span class="fa fa-arrow-down"></span></h4>
                <br/>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1 Resume_format shadow" id="download_resume" >
                        
                        <div class="row mt-2">
                             <% 
        
                                        DbManager dm= new DbManager();
                                        String query= "select name,email,mobile,language,careerobj,aboutuser,education,techskills,personalskills,certifications,awards,achievements,hobbies,address,image from userdetails where email= '"+user+"'" ;
                                        ResultSet rs= dm.selectQuery(query);
                                        while(rs.next())
                                        {
                                            %>
                                        
                            <div class="col-md-4 py-5 background" >
                                <div class="container">
                                   
                                  <img src="../images<%out.print(rs.getString("image"));%>" alt="image_fetching_error" style="height:150px;width: 100%;">
                                  <br/>
                                  <br/>
                                    <p ><%out.print(rs.getString("name"));%></p>
                                    <p ><%out.print(rs.getString("mobile"));%></p>
                                    <p><%out.print(rs.getString("email"));%></p>
                                    <p ><%out.print(rs.getString("language"));%></p>
                                    <p><%out.print(rs.getString("address"));%></p>
                                    <hr/>

                                    <div class="card mt-4 cardstyle" style="width: 100%;">
                                    <div class="card-header background">
                                        <h3>Technical skills</h3>
                                    </div>
                                    <div class="card-body">
                                       
                                           
                                                 <%out.print(rs.getString("techskills"));%>
                                                
                                        
                                    </div>
                                </div>
                                <div class="card mt-4 cardstyle" style="width: 100%;">
                                    <div class="card-header background">
                                        <h3>Personal skills</h3>
                                    </div>
                                    <div class="card-body">
                                        
                                                 <%out.print(rs.getString("personalskills"));%>
                                               
                                    </div>
                                </div>
                                                 
                                <div class="card mt-4 cardstyle" style="width: 100%;">
                                    <div class="card-header background" >
                                        <h3>Hobbies</h3>
                                    </div>
                                    <div class="card-body">
                                        
                                                 <%out.print(rs.getString("hobbies"));%>
                                               
                                    </div>
                                </div>

                                </div>
                            </div>
                            <div class="col-md-8 py-5" >
                                <h1 id="nameT2" class="text-center" style="font-weight: 400;"><%out.print(rs.getString("name"));%></h1>
                                <br/>
                                <div class="card mt-4 cardstyle">
                                    <div class="card-header background">
                                        <h3>Career Objective</h3>
                                    </div>
                                    <div class="card-body">
                                        <p id="cobjectiveT">
                                            <%out.print(rs.getString("careerobj"));%>
                                            
                                        </p> 
                                    </div>
                                </div>
                                <div class="card mt-4 cardstyle">
                                    <div class="card-header background">
                                        <h3>About</h3>
                                    </div>
                                    <div class="card-body">
                                        <p id="aboutT">
                                           <%out.print(rs.getString("aboutuser"));%>
                                            
                                        </p> 

                                    </div>
                                </div>
                                <div class="card mt-4 cardstyle">
                                    <div class="card-header background">
                                        <h3>Education</h3>
                                    </div>
                                    <div class="card-body">
                                        <ul id="eduT">
                                            <li>
                                                <%out.print(rs.getString("education"));%>
                                               </li>
                                            
                                        </ul> 
                                    </div>
                                </div>
                               
                                
                                <div class="card mt-4 cardstyle">
                                    <div class="card-header background">
                                        <h3>Certifications</h3>
                                    </div>
                                    <div class="card-body">
                                        <ul id="certiT">
                                            <li> 
                                                 <%out.print(rs.getString("certifications"));%>
                                                </li>
                                          
                                        </ul> 

                                    </div>
                                </div>
             <!---                      <div class="html2pdf__page-break"></div>-->
                                <div class="card mt-4 cardstyle">
                                    <div class="card-header background">
                                        <h3>Awards</h3>
                                    </div>
                                    <div class="card-body">
                                       <ul id="awdT">
                                            <li> 
                                                 <%out.print(rs.getString("awards"));%>
                                                 </li>
                                            
                                        </ul> 
                                    </div>
                                </div>
                                <div class="card mt-4 cardstyle">
                                    <div class="card-header background">
                                        <h3>Achievements</h3>
                                    </div>
                                    <div class="card-body">
                                        <ul id="achieveT">
                                            <li>
                                                 <%out.print(rs.getString("achievements"));%>
                                                </li>
                                            
                                        </ul> 
                                    </div>
                                </div>
                                
                                                 
                            </div>
                            
                              <% } %>              
                        </div>
                    </div>
                                               
                        <div class="container mt-3 text-center">
                                <button type="submit" id="download"  class="btn background">Download Resume</button>
                            </div>                
                   
                  </div> 
                </div>
        </section>




        <!-- ---- Social Media Part ------->

  <!--      <section id="social-media">
            <div class="container text-center">
                <p> FInd us on social Media</p>
                <div class="social-icons">
                    <a href="#"><img src="images/facebook-icon.png"/></a>
                    <a href="#"><img src="images/instagram-icon.png"/></a>
                    <a href="#"><img src="images/whatsapp-icon.png"/></a>
                    <a href="#"><img src="images/twitter-icon.png"/></a>
                    <a href="#"><img src="images/linkedin-icon.png"/></a>

                </div>
            </div>
        </section>
  -->
  <br/>
  <br/>
  <br/>
        <section id="footer">

            <div class="container">

                <hr/>
                <p class="copyright">Website Crafted By JAVA</p>
            </div>
        </section>
       
        <script src="js/smooth-scroll.js"></script>
        <script>
                                    var scroll = new SmoothScroll('a[href*="#"]');
        </script>
         <script src="js/userdetailsprocess.js" type="text/javascript"></script>
       
         <script src="js/html2pdf.bundle.min.js"></script>

         <script>
             window.onload= function()
             {
                 document.getElementById("download").addEventListener("click",()=>{
                     const download_resume = this.document.getElementById("download_resume");
                     html2pdf().from(download_resume).save();
                     
                 })
              
             }
            
         </script>
    </body>
</html>
<% }%>