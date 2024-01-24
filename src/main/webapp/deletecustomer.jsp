<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Handlee&family=Josefin+Sans:wght@100;200;300;400;500;600;700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,500;1,600;1,700;1,800;1,900&family=Rancho&display=swap"
      rel="stylesheet"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Handlee&family=Josefin+Sans:wght@100;200;300;400;500;600;700&family=Merienda:wght@400;700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,500;1,600;1,700;1,800;1,900&family=Rancho&display=swap"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
    />
    <link rel="icon" type="image/x-icon" href="../images/LogoMakr-282kmL.png">
 <style>
     body
        {
        background-image:url(https://cdnimg.webstaurantstore.com/images/articles/533/article_online-ordering_main.jpg);
        height:100vh;
        backgroun-size:cover;
        background-attachment: fixed;
        background-repeat:no-repeat;
        background-position:center;
        }
         .btn
        {
          font-family: "Roboto", sans-serif;
          text-transform: uppercase;
          outline: 0;
          background-color:white;
          color: #094b65;
          width: 90%;
          text-decoration:none;
          border: none;
          padding:8px;
          font-size: 14px;
          cursor: pointer;
          font-weight: bold;
          font-size: 15px;
          border-radius: 10px;
        }
         .btn:hover
        {
            background-color: #094b65;
            color: #f2f2f2;
        }
         * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
      }
      section {
        position: relative;
        width: 100%;
        padding: 100px;
        min-height: 100vh;
        display: flex;
        justify-content: space-between;
        align-items: center;
      
        
      }
      .logo {
        color: #094b65;
        font-size: 28px;
        font-family: "Merinda", cursive;
      }

      span {
        font-family: "Merinda", cursive;
        color: #b7e24d;
      }
      header {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        padding: 40px 100px;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
       header .logo {
        position: relative;
        max-width: 150px;
      } header .navigation {
        display: flex;
        justify-content: center;
        align-content: center;
      }
      header .navigation li {
        list-style: none;
        margin-left: 30px;
      }
      header .navigation li a {
        text-decoration: none;
        font-weight: bold;
        padding: 6px 15px;
        color: #094b65;
        border-radius: 20px;
        transition: 0.4s;
      }
      header .navigation li a:hover,
      header .navigation li a.active {
        transform: scale(1.3);
        cursor: pointer;
        background: #094b65;
        color: white;
      }
         .container
            {
                max-width:1500px;
               
                margin:auto;
            }
            
            .row
            {
                display: flex;
            }
            ul
            {
                list-style:none;
            }
            .footer
            {   
                margin-top: 0em;
                background-color: #24262b;
                padding: 50px 0; 
            }
            .footer-col
            {
                width: 56%;
                padding: 0 25px;
            }
           .footer-col h4
           {
            font-size: 18px;
            color: #ffffff;
            text-transform: capitalize;
            margin-bottom: 10px; 
            font-weight:500;
            position: relative;
        
          }
           .footer-col h4::before
           {
            content: '';
            position:absolute;
            left:0;
            bottom: -10px;
            height: 2px;
            box-sizing: border-box;
            width: 50px; 
           }
           .footer-col ul li:not(:last-child)
           {
              margin-bottom:10px;
           }
           .footer-col ul li a
           {
             font-size: 16px;
             text-transform: capatilize;
             color:#ffffff;
             text-decoration:none;
             font-weight: 300;
             color: #bbbbbb;
             display:block;
              transition: all 0.2s ease;
           } 
           .footer-col ul li a:hover
           {
             color: #ffffff;
             padding-left:10px;
           }
           .footer-col .social-links a
           {
            display: inline-block;
            height:40px;
            width: 40px;
            background-color: rgb(255, 255, 255, 0.2);
            margin:0 15px 15px 0;
            text-align: center;
            line-height:40px;
            border-radius:50%;
            color:#ffffff;
            transition: all 0.5s ease;

           }
            .footer-col .social-links p
            {
             color:white;
            }
           .footer-col .social-links a:hover
           {
            color: #24262b;
            background-color: #ffffff;
           }
    
 </style>
</head>
<body>
       <%
         String id =  request.getParameter("id");
         String name= request.getParameter("name");
         String email= request.getParameter("email");
         String phone= request.getParameter("phone");
         String username = request.getParameter("uname");
         String password =  request.getParameter("password");
         
      
      %>
       <section>
      <div class="circle"></div>
      
     <header>
        <h2 class="logo">GRUB<span> ON WHEEL</span></h2>
        <ul class="navigation">
          <li><a href="HomePage.jsp" class="active">HOME</a></li>
          <li><a href="#">MENU</a></li>
          <li><a href="#">ABOUT</a></li>
          <li><a href="#">CONTACT</a></li>
        </ul>
      </header>
      
      </section>
       <h1>Customer Account Delete</h1>
      <form action="delete" method="post">
    <table>
        <tr>
           <td>Customer ID</td>
           <td> <input type="text" name="cusid" value="<%= id %>" readonly></td>
        </tr>
        <tr>
           <td>Customer Name</td> 
           <td><input type="text" name="name" value="<%= name %>" readonly></td>
        </tr>    
        <tr>
           <td>Customer Email</td> 
           <td><input type="email" name="email" value="<%= email %>" readonly></td>
        </tr>
        <tr>
           <td>Phone Number</td>
           <td><input type="text" name="phone" value="<%= phone %>" readonly></td>   
       </tr>
       <tr>
           <td>User Name </td>
           <td><input type="text" name="uname" value="<%= username %>" readonly></td>
      </tr>     
      
    </table>
    <br>
    <input type="submit" name="submit" value="Delete My Account"> 
    </form>
    
     <footer class="footer">
                <div class="container">
                    <div class="row" >

                        <div class="footer-col">
                        <h4 class="logo">GRUB<span> ON WHEEL</span></h4>
                        <ul>
                            <li><a href ='#'>Home</a></li>
                            <li><a href ='#'>Menu</a></li>
                            <li><a href ='#'>About Us</a></li>
                            <li><a href ='#'>Contact Us</a></li>
                            <li><a href ='#'>Employee</a></li>
                        </ul>
                        </div> 

                        <div class="footer-col">
                        <h4>21 Isurupura Road Malabe, <br> Sri Lanka</h4>
                        <h4>+94 77 222 2999</h4>

                        </div> 

                        <div class="footer-col">
                        
                         <div class="social-links">
                           <h4>About the company</h4>
                           <p> This is a website of a online food ordering services,
                               we sell and deliver tasty food on time to satisfy our customer &amp; SEO Learner.</p>
                         <br><br>
                         <h4>Follow Us</h4>
                            <a href ='#'><i class="fab fa-facebook-f"></i></a>
                            <a href ='#'><i class="fab fa-twitter"></i></a>
                            <a href ='#'><i class="fab fa-instagram"></i></a>
                            <a href ='#'><i class="fab fa-linkedin"></i></a>
                            
                         </div>
                        </div> 

                    </div>
                </div>
        
           </footer>
</body>
</html>