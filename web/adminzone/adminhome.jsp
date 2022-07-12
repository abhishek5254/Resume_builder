<%
   String user=  (String)session.getAttribute("email");
      if (user== null || user == "") {
        response.sendRedirect("../login.jsp");
    } else {

%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" >

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        
      
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
         <link href="css/style.css"  rel="stylesheet"/>
        <meta name="viewport" content="width=500, initial-scale=1">
        <meta name="viewport" content="width=device-width, initial-scale=0.86, maximum-scale=5.0, minimum-scale=0.86">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume Builder- Admin</title>
    </head>
    <body>
        <div class="sidebar">
            <div class="sidebar-brand">
                <h2><span class="lab la-accusoft"></span>Resume Builder</h2>
            </div>
            <div class="sidebar-menu">
                <ul>
                    <li>
                        <a href="" class="active"><span class="las la-igloo"></span><span>Dashboard</span></a>
                    </li>
                     <li>
                        <a href=""><span class="las la-envelope"></span><span>Enquiries</span></a>
                    </li>
                     <li>
                        <a href=""><span class="las la-user"></span><span>Registrations</span></a>
                    </li>
                     <li>
                        <a href=""><span class="las la-user-circle"></span><span>Logged Users</span></a>
                    </li>
                     <li>
                        <a href="logout.jsp"><span class="fa fa-arrow-circle-o-left"></span><span>Logout</span></a>
                    </li>
                </ul>
            </div>
        </div>
        
        
        <div class="main-content">
            <header>
                
                    <h3>
                    <label for="">
                        <span class="las la-bars"></span>
                    </label>
                        Dashboard
                    </h3>
                    <div class="search-wrapper">
                        <span class="las la-search"></span>
                        <input type="search" placeholder="search here"/>
                    </div>
                    <div class="user-wrapper">
                        <img src="images/abhi.jpg" width="40px" height="40px" alt=""/>
                        <div>
                            <h4>Abhishek Upadhyay</h4>
                            <small>Super Admin</small>
                        </div>
                    </div>
               
            </header>
            
            <main>
                <div class="cards">
                    <div class="card-single">
                        <div>
                            <h1>54</h1>
                            <span>Enquiries</span>
                        </div>
                        <div>
                            <span class="las la-users"></span>
                        </div>
                    </div>
                    <div class="card-single">
                        <div>
                            <h1>40</h1>
                            <span>Registrations</span>
                        </div>
                        <div>
                            <span class="las la-users"></span>
                        </div>
                    </div>
                    <div class="card-single">
                        <div>
                            <h1>20</h1>
                            <span>Logged Users</span>
                        </div>
                        <div>
                            <span class="las la-users"></span>
                        </div>
                    </div>
                    <div class="card-single">
                        <div>
                            <h1>20</h1>
                            <span>Resume downloads</span>
                        </div>
                        <div>
                            <span class="las la-users"></span>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        
        
        
        
        
        
        
        
        
<!--
        <section id="nav-bar">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="adminhome.jsp"><span style="font-family: Arial Rounded MT;">RESUME BUILDER</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#!" data-bs-toggle="modal" data-bs-target="#profile-modal"> Your Profile</a>
                            </li>
                           
                            <li class="nav-item">
                                <a class="nav-link" href="logout.jsp">Logout</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </section>
        
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                       <%   %>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <!--<button type="button" class="btn btn-primary">Save changes</button> -->
          <!--          </div>
                </div>
            </div>
        </div>
        
        
         <section id="services">
            <div class="container mt-0 text-center">
                <h1 class="h1-title">Admin Dashboard</h1>
                <div class="row text-center">
                   
                    <div class="col-md-4 services">
                        <img src="images/service2.png" class="service-img"/>
                        <h4>Enquiries</h4>
                        <p>Don't have time to build CV, don't worry we are here to help you.</p>
                    </div>
                     <div class="col-md-4 services">
                         <a href="#" >
                        <img src="images/service1.png" class="service-img"/>
                        <h4>Users</h4>
                        <p>We make resume for you with our creative resume template.</p>
                         </a>
                    </div>
                    <div class="col-md-4 services">
                        <img src="images/service3.png" class="service-img"/>
                        <h4>Logged Users</h4>
                        <p>We make logo for you to save your time.</p>
                    </div>
                </div>
              
            </div>
        </section>
        
    
        <section id="footer">
            
                <hr/>
                <p class="copyright">Website Crafted By JAVA</p>
            </div>
        </section>

        <script src="js/smooth-scroll.js"></script>
        <script>
            var scroll = new SmoothScroll('a[href*="#"]');
        </script>
-->
    </body>
</html>
<% } %>