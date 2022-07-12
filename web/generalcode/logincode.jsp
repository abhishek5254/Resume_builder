<%@page import="mypack.DbManager"%>
<%@page import="java.sql.ResultSet"%>  
<%
 String email=request.getParameter("email");
 String password=request.getParameter("password");
 String query="select usertype from login where email='"+email+"'and password='"+password+"'";

DbManager dm=new DbManager();
  
 ResultSet rs=dm.selectQuery(query);
  
  if(rs.next()==true)
  {
     String usertype=rs.getString("usertype");
     if(usertype.equals("user"))
     {
         session.setAttribute("email",email);
         response.sendRedirect("../userzone/userhome.jsp");
         
        
     }
    else if(usertype.equals("admin"))
     {
         session.setAttribute("email",email);
         response.sendRedirect("../adminzone/adminhome.jsp");
        
     }
  }
else
  {
      out.print("<script>alert('Invalid user');window.location.href='../login.jsp';</script>");
  }  

    %>
    
    
    