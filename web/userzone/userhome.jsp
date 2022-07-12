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
    <body>

        <section id="nav-bar" >
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="landingpage.jsp"><span style="font-family: Arial Rounded MT;">RESUME BUILDER</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarNav">
                        <ul class="navbar-nav ms-auto">
<!--                            <li class="nav-item">
                                <a class="nav-link" href="#!" data-bs-toggle="modal" data-bs-target="#profile-modal"> Your Profile</a>
                            </li>-->
                            <li class="nav-item">
                                <a class="nav-link" href="logout.jsp">Logout</a>
                            </li>



                        </ul>
                    </div>
                </div>
            </nav>
        </section>




        <section id="user_session">

            <h1 class="user">
                <%   String email = (String) session.getAttribute("email");
                    out.print("<h3>Hello " + email + "</h3>");

                %>
            </h1>
        </section>
       


        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <!--<button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                </div>
            </div>
        </div>

        <!-- ---- Resume format Part ------->

        <!--   <section id="user_format">
               <div class="container">
                   <div class="row">
                       <div class="col-md-5 Resume_format" style="border: 1px solid;">
                           Format
                       </div>
                       <div class="col-md-5 Resume_format offset-md-2"  style="border: 1px solid;">
                           Format
                       </div>
                   </div>
               </div>
           </section>   -->

        <section id="resume_details_form">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <h3 class="md-2 text-nowrap" >Fill form to Generate Your resume</h3>
                        <div class="signup-form" id="cv-form">
                            <form class="mt-5 border p-4 bg-light shadow" action="usercode/userdetailscode.jsp" method="POST"   >
                                <div class="row">
                                    <div class="mb-3 col-md-6">
                                        <label> Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" class="form-control"  placeholder="Enter Your Name" required/>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label>Email <span class="text-danger">*</span></label>
                                        <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required/>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label>Contact <span class="text-danger">*</span></label>
                                        <input type="mobile" name="mobile"  class="form-control"  placeholder="Your phone number" required/>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label>Languages Known<span class="text-danger">*</span></label>
                                        <input type="text" name="language"  class="form-control" placeholder="Languages u r familiar with" required/>
                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label>Career Objective <span class="text-danger">*</span></label>
                                        <textarea name="careerobj"  placeholder="Enter your Career Objective" class="form-control" required></textarea>
                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label>About <span class="text-danger">*</span></label>
                                        <textarea name="aboutuser"  placeholder="Enter About You" class="form-control" required></textarea>
                                    </div>
                                    <div class="mb-3 col-md-12" id="edu">
                                        <label>Education<span class="text-danger">*</span></label>
                                        <textarea name="education" placeholder="Enter Your education" class="form-control eduField " required></textarea>
                                        <div class="container text-center mt-3 " id="eduaddbutton">
                                            <button onclick="addNewEduField()" class="btn btn-primary btn-sm">Add</button>
                                        </div>
                                    </div>

                                    <div class="mb-3 col-md-12" id="tech">
                                        <label>Technical Skills <span class="text-danger">*</span></label>
                                        <textarea name="techskills"  placeholder="Your Technical skills" class="form-control techField" required></textarea>
                                        <div class="container text-center mt-3" id="techaddbutton">
                                            <button onclick="addNewTechField()" class="btn btn-primary btn-sm">Add</button>
                                        </div>
                                    </div>


                                    <div class="mb-3 col-md-12" id="pskills">
                                        <label>Personal Skills<span class="text-danger">*</span></label>
                                        <textarea name="personalskills" placeholder="Enter Your personal Skills" class="form-control perskillField" required></textarea>
                                        <div class="container text-center mt-3" id="peraddbutton">
                                            <button onclick="addNewPSField()" class="btn btn-primary btn-sm">Add</button>
                                        </div>
                                    </div>


                                    <div class="mb-3 col-md-12" id="cert">
                                        <label>Certifications <span class="text-danger">*</span></label>
                                        <textarea name="certifications"  placeholder="Enter your certifications" class="form-control certiField" required></textarea>
                                        <div class="container text-center mt-3" id="certiaddbutton">
                                            <button onclick="addNewCertField()" class="btn btn-primary btn-sm">Add</button>
                                        </div>
                                    </div>

                                    <div class="mb-3 col-md-12" id="awd">
                                        <label>Awards <span class="text-danger">*</span></label>
                                        <textarea name="awards" placeholder="Your awards" class="form-control awardField" required></textarea>
                                        <div class="container text-center mt-3" id="awardaddbutton">
                                            <button onclick="addNewAwardField()" class="btn btn-primary btn-sm">Add</button>
                                        </div>
                                    </div>
                                    <div class="mb-3 col-md-12" id="achieve">
                                        <label>Achievements<span class="text-danger">*</span></label>
                                        <textarea name="achievements"  placeholder="Enter Your achievements" class="form-control achieveField" required></textarea>
                                        <div class="container text-center mt-3" id="achieveaddbutton">
                                            <button onclick="addNewAchieveField()" class="btn btn-primary btn-sm">Add</button>
                                        </div>
                                    </div>
                                    <div class="mb-3 col-md-12" id="hobby">
                                        <label>Hobbies<span class="text-danger">*</span></label>
                                        <textarea name="hobbies"  placeholder="Tell us your hobbies" class="form-control hobbyField" required></textarea>
                                        <div class="container text-center mt-3" id="hobbyaddbutton">
                                            <button onclick="addNewHobbyField()" value="user.hobbies" class="btn btn-primary btn-sm">Add</button>
                                        </div> 
                                    </div>

                                    <div class="mb-3 col-md-12">
                                        <label>Address<span class="text-danger">*</span></label>
                                        <textarea name="address"  placeholder="Enter your addresss" class="form-control" required></textarea>
                                    </div>
                                   
                                    <div class="mb-3 col-md-6">
                                        <label for="exampleInputFile">Upload Your  Image <span class="text-danger">*</span></label>
                                        <input type="file" name="image" id="exampleInputFile" required="true"/>

                                    </div> 
                                    
                                    <div class=" col-md-12 text-center ">
                                        <button  type="submit" id="btn" class="btn btn-primary shadow">Generate Resume</button>
                                    </div>

                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section> 



        <!-- ---- Social Media Part ------->

        <section id="social-media">
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

        <section id="footer">
            <img src="images/wave2.png" class="footer-img"/>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 footer-box">
                        <img src="images/pinterest_profile_image.png" />
                    </div>
                    <div class="col-md-4 footer-box">
                        <p><b>Contact Us</b></p>
                        <p><i class="fa fa-map-marker"></i>Chandigarh University</p>
                        <p> <i class="fa fa-phone"></i>+91 7380803382</p>
                        <p><i class="fa fa-envelope"></i> abhishekup7752@gmail.com</p>
                    </div>
                    <div class="col-md-4 footer-box">
                        <p><b>Subscribe Our Newsletter</b></p>
                        <input type="email" class="form-control" placeholder="Your Email"/>
                        <button type="button"  class="btn btn-success">Subscribe</button>
                    </div>

                </div>
                <hr/>
                <p class="copyright">Website Crafted By JAVA</p>
            </div>
        </section>

        <script src="js/smooth-scroll.js"></script>
        <script>
                                                var scroll = new SmoothScroll('a[href*="#"]');
        </script>

        <script src="js/userdetailsprocess.js" type="text/javascript"></script>


    </body>
</html>
<% }%>