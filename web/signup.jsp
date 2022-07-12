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
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link " href="index.jsp">Home</a>
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

        <section id="sign-up">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="signup-form">
                            <form class="mt-5 border p-4 bg-light shadow" action="generalcode/signupcode.jsp" method="POST">
                                <h3 class="mb-4 text-secondary">Create Your Account</h3>
                                <div class="row">
                                    <div class="mb-3 col-md-12">
                                        <label> Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" class="form-control" placeholder="Enter Your Name" required/>
                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label>Email <span class="text-danger">*</span></label>
                                        <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required/>
                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label>Password <span class="text-danger">*</span></label>
                                        <input type="password" name="password" class="form-control" placeholder="Enter Your Password" id="pass" required />
                                        <!--<span style="margin-top: -10px;">  <i class="fa fa-eye" id="togglePassword" style="margin-left: 475px; cursor: pointer;"></i></span> -->
                                        <p id="message">Password is<span id="strength"></span></p>
                                    </div>
                                   
                                    <div class="mb-3 col-md-12">
                                        <label>Mobile <span class="text-danger">*</span></label>
                                        <input type="mobile" name="mobile"  class="form-control" placeholder="+91-" required/>
                                    </div>
                                    <div class=" col-md-12 ">
                                        <button type="submit" class="btn btn-success shadow ">Sign Up</button>
                                    </div>

                                </div>
                            </form>
                            <p class="mt-2 text-center text-secondary">Already a user? Login <a href="login.jsp">Here</a></p>
                        </div>
                    </div>
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
        
        <script>
            var pass=document.getElementById("pass");
              var msg=document.getElementById("message");
                var str=document.getElementById("strength");
                
                pass.addEventListener('input', ()=>{
                    
                })
        </script>
        
        <script>
            
            const togglePassword= document.querySelector('#togglePassword');
            const password = document.querySelector('#pass');
            
            togglePassword.addEventListener('click',function (e){
                
                const type=password.getAttribute('type') === 'password' ? 'text':'password';
                password.setAttribute('type',type);
                this.classList.toggle('fa-eye-slash');
            })
            
        </script>
        

    </body>
</html>
