package mypack;

 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import mypack.DbManager;

/**
 *
 * @author ABHISHEK UPADHYAY
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/image"})
public class image extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           Part file= request.getPart("image");
           String imageFileName=file.getSubmittedFileName();
           System.out.println(imageFileName);
           String uploadPath = "S:/Resume Builder/web/images/"+imageFileName;
           
           FileOutputStream fos = new FileOutputStream(uploadPath);
           InputStream is=file.getInputStream();
           
           byte[] data = new byte[is.available()];
           is.read(data);
           fos.write(data);
           fos.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        {
            String tid=request.getParameter("ptype");
            String pname=request.getParameter("pname");
            String price=request.getParameter("price");
            String discount=request.getParameter("discount");
            String pdescript=request.getParameter("pdescript");
            
            Part p1=request.getPart("pic");
            String filename=p1.getSubmittedFileName();
            InputStream content=p1.getInputStream();
            DbManager dm=new DbManager();
            String pdate= dm.getDate();
            String query="insert into product(tid,pname,price,discount,pdescript,pic,pdate)"
                    + " values('"+tid+"','"+pname+"','"+price+"','"+discount+"','"+pdescript+"','"+filename+"','"+pdate+"')";
          
            //out.print(cmd+b);
            if( dm.nonQuery(query)==true)
            {
                File f=new File(request.getRealPath("/images/"),filename);
                Files.copy(content,f.toPath());
                out.print("<script>alert('Added Successfully');window.location.href='adminzone/addproduct.jsp';</script>");
            }
            else
               out.print("<script>alert('Not added Successfully');window.location.href='adminzone/addproduct.jsp';</script>");
             }
        catch(Exception ex)
        {
            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
