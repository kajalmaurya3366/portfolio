<%-- 
    Document   : index
    Created on : 13 Sep, 2024, 10:17:06 PM
    Author     : HP
--%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Portfolio</title>
    <link rel="stylesheet" href="css/style.css" />
    
  </head>
  <body>
    <!-- ====== main container START====== -->
   
    
    
    <div class="main-container  ">
      <!-- =====sidebar START ===== -->
      <div class="sidebar d-none " >
        <div class="logo">
          <span class="span1">
            <a href="#"><span>P</span>ortfolio</a>
          </span>
        </div>
        <div >
        <ul class="nav ">
          <li >
            <a href="#home" ><i class="fa-solid fa-house "></i>Home</a>
          </li>
          <li>
            <a href="#about" ><i class="fa-solid fa-user " onclick=""></i>My Info</a>
          </li>
          <li>
            <a href="#project"><i class="fa-solid fa-briefcase"></i>My Projects</a>
          </li>
          <li>
            <a href="#contact"><i class="fa-solid fa-comments"></i>Contact</a>
          </li>
          

        </ul>
      </div>
      </div>
      <!-- =====sidebar END ===== -->


      <!-- ===== Home section START====== -->
      <section class="home section" id="home">
        <div class="details ">
          <div class="home-info">

              <!--============ java code============-->
              <%
                  Connection conn=null;
                  PreparedStatement pst=null;
                  PreparedStatement ps=null;
           
                   String email = request.getParameter("email");
                  try{
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        conn = DriverManager.getConnection("jdbc:oracle:thin:@//LAPTOP-KVRJ659S:1521/xe", "portfolioKaj", "abc");
                        pst = conn.prepareStatement("SELECT  * FROM createform where mail=?");
                        pst.setString(1, email);
                        ResultSet rs=pst.executeQuery();
                       if(rs.next()){
                            
                            
              %>
              
            <h2 class="my-name">Hello I'm <span><%=rs.getString("fname")%></span></h2>
            <h2 class="profession">I'm <span class="typing"><%= rs.getString("profession")%></span></h2>
            <p class="indetail ">
              <%= rs.getString("fdetail")  %>
            </p>
            <a href="#about" class="btn1">More Details</a>
          </div>
          <div class="home-img">
           <img class="col-12"
              src="https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg"
              alt=""
            />
           
          </div>
        </div>
       </section>
       <!-- ==== Home section End ===== -->


       <!-- ==== About section START ===== -->
        <section class="about section " id="about">
         <div class="row">
          <div class="page-title  ">
            <h2>My Info</h2>
          </div>
          <div class="about-me">
            <h2 class="my-name">I'm <span><%=rs.getString("fname")%></span></h2>
            <p class="indetail"><%= rs.getString("fdetail")  %></p>
            <div class="button">
              <button class=" btn1">Dowload CV</button>
            </div>
            
            <div class="personal-detail-box">
              <div class="box-title"><h2>Personal Details</h2></div>
               <div class="personal">
                <div class="detail-item">
                  <h4>Date Of Birth:</h4
                 
                  <p><%= rs.getDate("dob") %></p>
                </div>
                <div class="detail-item">
                  <h4>Language Known:</h4>
                  <p><%= rs.getString("lang") %></p>
                </div>
                <div class="detail-item">
                  <h4>Phone Number:</h4>
                  <p><%= rs.getLong("mobile")%></p>
                </div>
                <div class="detail-item">
                  <h4>Address :</h4>
                  <p><%=  rs.getString("address")%></p>
                </div>
                          
               </div>
            </div>

            <div class="skill-box">
              <div class="box-title"><h2>Skills </h2></div>
              <div class="skills-detail">
                <div class="skill-item">
                  <img src="img/html.png" alt="html">
                  <h3 class="skill-name">Html</h3>
                </div>
                <div class="skill-item">
                  <img src="img/css.png" alt="html">
                  <h3 class="skill-name">CSS</h3>
                </div>
                <div class="skill-item">
                  <img src="img/bootstrap.png" alt="html">
                  <h3 class="skill-name">Bootstrap</h3>
                </div>
                <div class="skill-item">
                  <img src="img/js.png" alt="html">
                  <h3 class="skill-name">javaScript</h3>
                </div>
                <div class="skill-item">
                  <img src="img/java.png" alt="html">
                  <h3 class="skill-name">Java</h3>
                </div>
                <div class="skill-item">
                  <img src="img/sql.png" alt="html">
                  <h3 class="skill-name">SQL</h3>
                </div>
                
              </div>
            </div>
            <div class="edu-box">
              <div class="box-title"><h2>Education </h2></div>
              <div class="edu-details">
                
                  <div class="edu-item">
                    <div class="circle-dot"></div>
                    <div class="edu-date"><i class="fa-solid fa-calendar"></i><%= rs.getString("college_start_year") %>- <%= rs.getString("college_end_year") %></div>
                    <h4 class="edu-title"><%= rs.getString("branch") %></h4>
                    <p class="edu-text"><%= rs.getString("college_detail") %></p>
                </div>

                <div class="edu-item">
                  <div class="circle-dot"></div>
                  <div class="edu-date"><i class="fa-solid fa-calendar"></i><%= rs.getString("TWELFTH_START_YEAR") %> - <%= rs.getString("TWELFTH_END_YEAR") %></div>
                  <h4 class="edu-title">12<sup>th</sup> Class</h4>
                  <p class="edu-text indetail"><%= rs.getString("TWELFTH_DETAIL") %></p>
              </div>

             <div class="edu-item">
                <div class="circle-dot"></div>
                <div class="edu-date"><i class="fa-solid fa-calendar"></i><%= rs.getString("TENTH_START_YEAR") %> - <%= rs.getString("TENTH_END_YEAR") %></div>
                <h4 class="edu-title">10<sup>th</sup>Class
                </h4>
                <p class="edu-text indetail"><%= rs.getString("TENTH_DETAIL") %></p>
             </div>
              </div>
            </div>
          </div>
         </div>
        </section>
        <!-- ==== About section End ===== -->



         <!-- ==== My project  section Start ===== -->
          <section class=" my-project section" id="project">
            <div class="row">
              <div class="page-title">
                <h2>My Projects</h2>
              </div>
              <div class="my-work">

                <!-- item -->
                <div class="project-item">
                  <a href="#">
                  <div class="p-name"><%= rs.getString("project_name") %></div>
                  <p><%= rs.getString("project_detail") %></p>
                      <img src="#" alt=""width="100%" height="200px">
                </a>
                </div>
            
               <%
                    
                 }
                    } catch (Exception e) {
                        e.printStackTrace();
out.println(e.getMessage());
                    } finally {
                        try {
                           
                            if (pst != null) pst.close();
                            if (conn != null) conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
              
              %>
                 

              </div>
            </div>
          </section>
        <!-- ==== My project  section end===== -->


           <!-- ==== Contact section Start===== -->
            <section class=" contact section" id="contact">
              <div class="row">
                <div class="page-title">
                  <h2>Contact Me</h2>
                </div>
                <div class="form-container">
                  <div class="form">
                    <form >
                      <input type="hidden" name="access_key" value="0ac23793-7fa4-4738-b187-81a7dd5ecee1">
                      <div class="name input">
                        <input type="text " placeholder="First  name" name="Fname" class="text-box" required  >
                       <input type="text" placeholder="Last name" name="Lname" class="text-box"required>
                      </div>
                      <div class="email input">
                        <input type="email" placeholder="Email"  name="email"class="text-box"required>
                      </div>
                      <textarea name="" id="" name="msg" placeholder="Enter Message" class="text-box"></textarea>

                      <button type="submit">Send Message</button>
                    </form>
                    <div class="social-links">
                      <div class="social-item"><a href="#"><i class="fa-brands fa-linkedin"></i></a></div>
                      <div class="social-item"><a href="#"><i class="fa-brands fa-square-instagram" ></i></a></div>
                      <div class="social-item"><a href="#"><i class="fa-brands fa-square-facebook"></i></a></div>

                    </div>
                  </div>
                </div>
              </div>
            </section>
            <!-- ==== Contact section end ===== -->




           

    </div>
    <!-- ====== main container END====== -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.1.0/typed.umd.js" integrity="sha512-+2pW8xXU/rNr7VS+H62aqapfRpqFwnSQh9ap6THjsm41AxgA0MhFRtfrABS+Lx2KHJn82UOrnBKhjZOXpom2LQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js/script.js"></script>
    
    <script
      src="https://kit.fontawesome.com/f2440edb3d.js"
      crossorigin="anonymous"
    ></script>
    
  </body>
</html>


