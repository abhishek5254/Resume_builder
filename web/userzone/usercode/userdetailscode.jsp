<%@page import="mypack.DbManager"%>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String language = request.getParameter("language");
    String careerobj = request.getParameter("careerobj");
    String aboutuser = request.getParameter("aboutuser");
    String education = request.getParameter("education");
    String techskills = request.getParameter("techskills");
    String personalskills = request.getParameter("personalskills");
    String certifications = request.getParameter("certifications");
    String awards = request.getParameter("awards");
    String achievements = request.getParameter("achievements");
    String hobbies = request.getParameter("hobbies");
    String address=request.getParameter("address");
    String image=request.getParameter("image");
    

    DbManager dm = new DbManager();
    String regdate = dm.getDate();
    String usertype = "user";

    String query = "insert into userdetails values('" + name + "','" + email + "','" + mobile + "','" + language + "','" + careerobj + "','" + aboutuser + "','"+ education+"','"+techskills+"','"+personalskills+"','"+ certifications+"','"+awards+"','"+achievements+"','"+hobbies+"','"+address+"','"+image+"')";                          

    if (dm.nonQuery(query) == true) {

        out.print("<script>window.alert('Your resume has been generated ');window.location.href='../userformat.jsp';</script>");

    } else {
        out.print("<script>alert('Something went wrong');window.location.href='userhome.jsp';</script>");
    }


%>

