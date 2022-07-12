<%@page import="mypack.DbManager"%>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*"%>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    
    String from="abhishekup7752@gmail.com";
    final String username="abhishekup7752@gmail.com";
    final String pass="prnaqecqnrkhasvg";
    
    String host="smtp.gmail.com";
    Properties props=new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable","true");
    props.put("mail.smtp.host",host);
    props.put("mail.smtp.port","587");
    
    Session session1= Session.getInstance(props, new javax.mail.Authenticator(){
    protected PasswordAuthentication getPasswordAuthentication(){
    return new PasswordAuthentication(username, pass);
    }
    });
   // try{
    
  
     Message message = new MimeMessage(session1);
     
     message.setFrom(new InternetAddress(from));
     
     message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
     
     message.setSubject("Registration");
     
     message.setText("Thank you for registration to Resume Builder. Login to get more from us.");
     
     Transport.send(message);
  
  
    String password = request.getParameter("password");
   
     
    
    String mobile = request.getParameter("mobile");
    DbManager dm = new DbManager();
    String regdate = dm.getDate();
    String usertype = "user";

    String query = "insert into signup values('" + name + "','" + email + "','" + password + "','" + mobile + "','" + regdate + "')";
    String query1 = "insert into login values('" + email + "','" + password + "','" + usertype + "')";
    if (dm.nonQuery(query) == true) {
        if (dm.nonQuery(query1) == true) {
            out.print("<script>alert('Thankyou for registration ');window.location.href='../login.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Email already exists');window.location.href='../signup.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Registration is not done');window.location.href='../signup.jsp';</script>");
    }
    //}
    //catch(Exception e)
    //{
       // e.printStackTrace();
   // }


%>

