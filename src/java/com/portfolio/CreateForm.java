package com.portfolio;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/form")
@MultipartConfig
public class CreateForm extends HttpServlet {
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException{
        PrintWriter out = res.getWriter();
        
        
        String name=req.getParameter("fname");
        String pro=req.getParameter("profession");
        String f_detail=req.getParameter("user_detail");
        out.println(f_detail);
        String birth=req.getParameter("dob");
      
        String lang=req.getParameter("lang");
        long mobile=Long.parseLong(req.getParameter("mobile"));
        String addr=req.getParameter("addr");
        String mail = req.getParameter("mail");
        Part img=req.getPart("img");
        InputStream image = img.getInputStream();
        Part resume = req.getPart("resu");
        InputStream resu = resume.getInputStream();
        String clg_start_year =req.getParameter("clgs");
        String clg_end_year=req.getParameter("clge");
        String branch=req.getParameter("clg_branch");
        String clg_detail=req.getParameter("clg_detail");
        String tw_start_year=req.getParameter("tws");
        String tw_end_year=req.getParameter("twe");
        String tw_detail=req.getParameter("tw_detail");
         String t_start_year=req.getParameter("ts");
        String t_end_year=req.getParameter("te");
        String t_detail=req.getParameter("t_detail");
        String project_name=req.getParameter("proj_name");
        String project_detail=req.getParameter("proj_detail");
        Part proj_image=req.getPart("proj_img");
        InputStream project_img=proj_image.getInputStream();
        String project_link=req.getParameter("proj_link");
        
         RequestDispatcher dispatcher = null;
        Connection conn=null;
                
        try{
               Class.forName("oracle.jdbc.driver.OracleDriver");
               conn=DriverManager.getConnection("jdbc:oracle:thin:@//LAPTOP-KVRJ659S:1521/xe","portfolioKaj","abc");
           
               PreparedStatement pst=conn.prepareCall("insert into createForm(fname,profession,fdetail,dob,lang,mobile,address,mail,img,resume,college_start_year,college_end_year,branch,college_detail,twelfth_start_year,twelfth_end_year,twelfth_detail,tenth_start_year,tenth_end_year,tenth_detail,project_name,project_detail,project_image,project_link)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
               pst.setString(1, name);
               pst.setString(2,pro);
               pst.setString(3,f_detail);
               
             SimpleDateFormat sdf=new SimpleDateFormat ("dd/MM/yyyy");
            java.util.Date b_date=sdf.parse(birth);
        
        // java.util.date into java.sql.date
        long l=b_date.getTime();
        java.sql.Date birth_date =new java.sql.Date(l);
        
        pst.setDate(4,birth_date);
              
              pst.setString(5,lang);
              pst.setLong(6,mobile);
              pst.setString(7, addr);
              pst.setString(8,mail);
              pst.setBlob(9,image);
              pst.setBlob(10,resu);
              pst.setString(11, clg_start_year);
              pst.setString(12, clg_end_year);
              pst.setString(13,branch);
              pst.setString(14,clg_detail);
              pst.setString(15, tw_start_year);
              pst.setString(16, tw_end_year);
              pst.setString(17,tw_detail);
              pst.setString(18, t_start_year);
              pst.setString(19, t_end_year);
              pst.setString(20,t_detail);
              pst.setString(21,project_name);
              pst.setString(22,project_detail);
              pst.setBlob(23, project_img);
              pst.setString(24,project_link);
             
            int rowsAffected = pst.executeUpdate();
            if (rowsAffected > 0) {
                 req.setAttribute("status", "success");
                 res.sendRedirect("userPortfolio.jsp?email=" + mail);
            } else {
                  req.setAttribute("status", "error");
            }
            dispatcher = req.getRequestDispatcher("userPortfolio.jsp");
            dispatcher.forward(req, res);
              
        }catch(Exception e){
//            e.printStackTrace();
            out.println(e.getMessage());
        }
        
        

        
    }


}
