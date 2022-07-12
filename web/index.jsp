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
        <meta name="viewport" content="width=device-width, initial-scale=0.86, maximum-scale=5.0, minimum-scale=0.86">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume Builder</title>
    </head>
    <body>
        <section id="nav-bar">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp"><span style="font-family: Arial Rounded MT;">RESUME BUILDER</span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" >
                        <i class="fa fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link " href="#about-us">About Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signup.jsp">Sign Up</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Login</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </section>

        <section id="banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-6" id="banner-button">
                        <p class="title">We build your Resume</p>
                        <p>Have Trust in us, We build the best for you</p>
                        <p>Have Trust in us, We build the best for you</p>
                        <p>Have Trust in us, We build the best for you</p>

                        <a href="login.jsp"><button class="btn btn-success">Explore</button></a>
                    </div>
                    <div class="col-md-6 text-center">
                        <img src="images/home2.png" class="img-fluid"/>
                    </div>
                </div>   

            </div>  
            <img src="images/wave1.png" class="bottom-img"/>
        </section>


        <section id="services">
            <div class="container text-center">
                <h1 class="h1-title">What we do? </h1>
                <div class="row text-center">
                    <div class="col-md-4 services">
                        <img src="images/service1.png" class="service-img"/>
                        <h4>Resume Building</h4>
                        <p>We make resume for you with our creative resume template.</p>
                    </div>
                    <div class="col-md-4 services">
                        <img src="images/service2.png" class="service-img"/>
                        <h4>CV Building</h4>
                        <p>Don't have time to build CV, don'worry we are here to help you.</p>
                    </div>
                    <div class="col-md-4 services">
                        <img src="images/service3.png" class="service-img"/>
                        <h4>Logo Maker</h4>
                        <p>We make logo for you to save your time.</p>
                    </div>
                </div>
                <button type="button" class="btn btn-primary"> All Services</button>
            </div>
        </section>
        <!------>
        <section id="about-us">
            <div class="container">
                <h1 class="h1-title text-center" > Why  Choose Us?</h1>
                <div class="row">
                    <div class="col-md-6 about-us ">
                        <p class="about-title">Why We are different</p>
                        <ul>
                            <li>Believe in our work</li>
                            <li>We create a winning content</li>
                            <li>We will never let you down</li>
                            <li>We creates the better</li>
                            <li>We protect your online reputation</li>
                            <li>We protect your online reputation</li>

                        </ul>
                    </div>
                    <div class="col-md-6">
                        <img src="images/network.png" class="img-fluid"/>
                    </div>
                </div>
            </div>
        </section>

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
                        
                      <img src="images/pinterest_profile_image.png" style="margin-top: 3rem;" />
                       
                    </div>
                    <div class="col-md-4 footer-box">
                        <p><b>Contact Us</b></p>
                        <p><i class="fa fa-map-marker"></i>Chandigarh University</p>
                        <p> <i class="fa fa-phone"></i>+91 7380803382</p>
                        <p><i class="fa fa-envelope"></i> abhishekup7752@gmail.com</p>
                    </div>
                    <div class="col-md-4 footer-box">
                        <p><b>Subscribe Our Newsletter</b></p>
                        <form action="generalcode/subcode.jsp" method="post">  
                        <input type="email" name="email" class="form-control" placeholder="Your Email"/>
                        <button type="submit"  class="btn btn-success">Subscribe</button>
                    </form>
                    </div>

                </div>
                <hr/>
                <p class="copyright"><a href="developersprofile.jsp" style="text-decoration: none;color: #fff;">Website Crafted By JAVA</a></p>
            </div>
        </section>

        <script src="js/smooth-scroll.js"></script>
        <script>
            var scroll = new SmoothScroll('a[href*="#"]');
        </script>

    </body>
</html>
