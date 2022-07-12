<%@page import="mypack.DbManager"%>
<%
    String email=request.getParameter("email");
    DbManager dm = new DbManager();
    
   String query="insert into enquiry values('"+ email+"')";
    
    if(dm.nonQuery(query)==true)
    {
         out.print("<script>alert('Thankyou for reaching us , we will contact you soon ');window.location.href='./index.jsp';</script>");
    }



%>
 