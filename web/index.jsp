<%-- 
    Document   : index
    Created on : 13 Sep, 2024, 10:17:06 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
          <li>
            <a href="#create"><i class="fa-solid fa-file"></i>Create your</a>
          </li>
        </ul>
      </div>
      </div>
      <!-- =====sidebar END ===== -->


      <!-- ===== Home section START====== -->
      <section class="home section" id="home">
        <div class="details ">
          <div class="home-info">
            <h2 class="my-name">Hello I'm <span>Kajal Maurya</span></h2>
            <h2 class="profession">I'm <span class="typing">Frontend Developer</span></h2>
            <p class="indetail ">
              I am BTech student at Bansal Institute of Science and Technolgy specializing in IT Branch and last sem CGPA is 7.81.
              <br> <br>I am proficient in programming languages such as C, Cpp, Java,and have a knowledge in web development HTML, CSS, Bootstrap and oracle database.
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
            <h2 class="my-name">I'm <span>Kajal Maurya</span></h2>
            <p class="indetail ">
              I am BTech student at Bansal Institute of Science and Technolgy specializing in IT Branch and last sem CGPA is 7.81.
              <br> <br>I am proficient in programming languages such as C, Cpp, Java,and have a knowledge in web development HTML, CSS, Bootstrap and oracle database.
            </p>
            <div class="button">
          
              <a href="ResumeKajal.pdf" target="_blank"><button class="btn1">Dowload CV</button></a>
            </div>
            
            <div class="personal-detail-box">
              <div class="box-title"><h2>Personal Details</h2></div>
               <div class="personal">
                <div class="detail-item">
                  <h4>Date Of Birth:</h4>
                  <p>07-11-2004</p>
                </div>
                <div class="detail-item">
                  <h4>Language Known:</h4>
                  <p>Hindi /English</p>
                </div>
                <div class="detail-item">
                  <h4>Phone Number:</h4>
                  <p>+91 7898073810</p>
                </div>
                <div class="detail-item">
                  <h4>Address :</h4>
                  <p>Bhopal(M.P)</p>
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
                    <div class="edu-date"><i class="fa-solid fa-calendar"></i>2021-2025</div>
                    <h4 class="edu-title">Information Technology</h4>
                    <p class="edu-text">   I am BTech student at Bansal Institute of Science and Technolgy specializing in IT Branch </p>
                </div>

                <div class="edu-item">
                  <div class="circle-dot"></div>
                  <div class="edu-date"><i class="fa-solid fa-calendar"></i>2019-2020</div>
                  <h4 class="edu-title">12<sup>th</sup> Class</h4>
                  <p class="edu-text indetail">I have completed by 12th from MP Board at chitransh K.D memorial H.S school and got 92% </p>
              </div>

             <div class="edu-item">
                <div class="circle-dot"></div>
                <div class="edu-date"><i class="fa-solid fa-calendar"></i>2018-2019</div>
                <h4 class="edu-title">10<sup>th</sup>Class
                </h4>
                <p class="edu-text indetail">I have completed by 10th from MP Board at chitransh K.D memorial H.S school and got 92.2% </p>
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
                  <div class="p-name">E-Vyavasaya</div>
                  <p>It is designed to connect people with skilled workers and service providers in various trades, such as plumbing, electricians, driving, interior designer, painter and landlord for PG . A user-friendly interface for both service providers and those in need of services.</p>
                  <img src="img/E-Vayasaya.png" alt=""width="100%" height="150px">
                </a>
                </div>
            
              <!-- item -->
                <div class="project-item">
                  <a href="#">
                  <div class="p-name">Dynamic Portfolio Builder</div>
                  <p>Developed a portfolio platform that allows users to create their own personalized portfolios.By simply filling out a form, users can generate a fully functional portfolio with their details into a same design, without needing to write any code. The system ensures user-friendly interactions, responsive layouts.</p>
                  <img src="img/portfolio.png" alt=""width="100%" height="150px">
                </a>
                </div>

                  

                        <!-- item -->
                <div class="project-item">
                  <a href=" https://kajalmaurya3366.github.io/Movie/">
                  <div class="p-name">Movie Site</div>
                  <p>The site features a user-friendly interface, enabling users to input movie titles and receive corresponding movie summaries in real time. Implemented responsive design and interactive functionality, providing a seamless user experience. This project demonstrates proficiency in front-end web development and interactive web design.</p>
                  <img src="img/movie.png" alt=""width="100%" height="150px">
                </a>
                </div>
                        
                        <!-- item -->
                <div class="project-item">
                  <a href="https://kajalmaurya3366.github.io/Music_player/">
                  <div class="p-name">Music player</div>
                  <p>It aimed to create a simple yet functional music player interface. Including many features such as play/pause controls, volume adjustment, track progress display and songs lists.</p>
                  <img src="img/music.png" alt=""width="100%" height="150px">
                </a>
                </div>
                          <!-- item -->
                    <div class="project-item">
                      <a href="#">
                      <div class="p-name">Myntra Clone</div>
                      <p>A simple UI desing e-commerce platform to create a user-friendly interface. Implemented features are shopping cart management, product listings.</p>
                      <img src="img/Myntra.png" alt=""width="100%" height="150px">
                    </a>
                    </div>
                          
                         <!-- item -->
                <div class="project-item">
                  <a href="#">
                  <div class="p-name"> Company Site</div>
                  <p>Designed and developed for a technology company,showcasing its services, events, and achievements.The website features a modern user interface with sections highlighting the company's mission, services , upcoming and past events.Implemented a structured layout to ensure easy navigation and a professional online presence.</p>
                  <img src="img/company.png" alt=""width="100%" height="150px">
                </a>
                </div>
                        
                        
                        
                        
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




            <!-- ==== Create-form  section Start ===== -->
            <section class="create-form  section" id="create">
             <div class="row">
                <div class="page-title">
                  <h2>Build Resume</h2>
                </div>
              
                  <div class="form-container">
                    <form action="form" method="post" enctype="multipart/form-data">

                      <div class=" basic-detail input-item">
                       <div class="box-title"><h2>Basic Details : </h2></div>
                      <input type="text" placeholder="Full Name" class="text-box"name="fname" required>
                      <input type="text" placeholder="Your Profession" class="text-box" name="profession"required>
                      <textarea  id="" class="text-box" placeholder="Details about you" name="user_detail" required></textarea>
                      <input type="text" class="text-box" placeholder="Your date of Birth" name="dob" required>
                      <input type="text" class="text-box" placeholder="Language Known" name="lang" required>
                      <input type="text" class="text-box" placeholder="Phone Number" name="mobile" required>
                      <input type="text" class="text-box" placeholder="Address" name="addr" required>
                      <input type="email" class="text-box" placeholder="Mail Id" name="mail" required>
                       <div class="file"><label for=""> your image:</label><input type="file" name="img" required></div>
                       <div class="file"><label for=""> Resume:</label><input type="file" name="resu"required></div>
                     
                      </div>

                      <div class=" clg input-item">
                        <div class="box-title"><h2>College Details : </h2></div>
                      <input type="text" class="text-box" placeholder="College Starting Year" name="clgs"required>
                      <input type="text" class="text-box" placeholder="College Passout Year"name="clge"required>
                      <input type="text" class="text-box" placeholder="Specializing In - CS,IT,EC..." name="clg_branch"required>
                      <textarea  class="text-box" placeholder="Details About College like name,Study" name="clg_detail"required></textarea>
                    </div>

                    <div class=" scl-12 input-item">
                      <div class="box-title"><h2>12<sup>th</sup> : </h2></div>
                      <input type="text" class="text-box" placeholder="12th Starting Year" name="tws" required>
                      <input type="text" class="text-box" placeholder="12th completion Year" name="twe"required>
                      <textarea  class="text-box" placeholder="Details About School like name,Stream  and etc." name="tw_detail" required></textarea>
                    </div>

                    <div class="scl-10 input-item">
                      <div class="box-title"><h2>10<sup>th</sup> : </h2></div>
                      <input type="text" class="text-box" placeholder="10th starting Year"name="ts" required>
                      <input type="text" class="text-box" placeholder="10th completion Year" name="te" required>
                      <textarea  class="text-box" placeholder="Details About School like name,Stream  and etc."name="t_detail" required></textarea>
                    </div>

                    <div class="your-project input-item">
                      <div class="box-title"><h2>Project Details : </h2></div>
                      <input type="text" class="text-box" placeholder="Project Name"name="proj_name" required>
                      <textarea  class="text-box" placeholder="Project Description"name="proj_detail"required></textarea>
                      <div class="file"><label for=""> Project Front  image:</label><input type="file" name="proj_img" required></div>
                      <input type="text" class="text-box" placeholder="Project Link" name="proj_link"required >
                    </div>

                    <div class="button">
                      <button class=" btn1">Submit</button>
                    </div>
                    </form>
                  </div>

                </div>
              </div>
              </div>
            </section>
            <!-- ==== Create Resume  section END ===== -->

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


