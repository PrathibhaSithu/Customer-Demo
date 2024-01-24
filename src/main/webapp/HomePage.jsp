<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>HOME PAGE</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
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
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: #000;
      }

      @keyframes animate {
        0% {
          transform: perspective(1000px) rotateY(0deg);
        }
        100% {
          transform: perspective(1000px) rotateY(360deg);
        }
      }

      section {
        position: relative;
        width: 100%;
        min-height: 100vh;
        padding: 100px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        background: #0B9D2E;
      }

      section .circle {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: white;
        clip-path: circle(70% at right -20%);
      }

      .logo {
        color: white;
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
      }
      header .navigation {
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
      .button {
        border: none;
        background: #094b65;
        padding: 12px 30px;
        border-radius: 30px;
        margin-right: 120px;
        text-decoration:none;
        color: white;
        font-weight: bold;
        font-size: 15px;
        transition: 0.4s;
      }
      .button:hover {
        transform: scale(1.3);
        cursor: pointer;
      }
      .content {
        position: relative;
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      .content .textBox {
        position: relative;
        max-width: 600px;
        margin-right: 20px;
      }
      .content .textBox h2 {
        color: #fff;
        font-size: 3em;
        margin-bottom: 10px;
        line-height: 1.4em;
        font-weight: 700;
      }
      .content .textBox p {
        color: #fff;
      }
      .content .textBox a {
        display: inline-block;
        margin-top: 20px;
        padding: 8px 20px;
        background: #094b65;
        color: #fff;
        border-radius: 40px;
        font-weight: bold;
        letter-spacing: 1px;
        text-decoration: none;
      }
      .content .textBox {
        width: 500px;
      }
      .box {
        position: relative;
        width: 200px;
        height: 200px;
        transform-style: preserve-3d;
        animation: animate 20s linear infinite;
    }
    .box span 
    {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        transform-origin: center;
        transform-style: preserve-3d;
        transform: rotateY(calc(var(--i) * 45deg)) translateZ(400px);
        -webkit-box-reflect: below 0px
          linear-gradient(transparent, transparent, #004);
   }
   .box span img 
   {
     position: absolute;
     top: 0;
     left: 0;
     width: 100%;
     height: 100%;
     object-fit: cover;
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
    <section>
      <div class="circle"></div>
      <header>
        <h2 class="logo">GRUB<span> ON WHEEL</span></h2>
        <ul class="navigation">
          <li><a href="#" class="active">HOME</a></li>
          <li><a href="#">MENU</a></li>
          <li><a href="#">ABOUT</a></li>
          <li><a href="#">CONTACT</a></li>
        </ul>
        
        <a href="login.jsp" class="button">LOGIN</a>
      </header>

      <div class="content">
        <div class="textBox">
          <h2>It's not just Food, It's an Experience</h2>
          <p>
            We are helping you to get fresh and delicious food in few minutes by
            using our nice Web and app
          </p>
          <br />
          <a href="#">Our Menu</a>
        </div>
      </div>

      <div class="box">
        <span style="--i:1"><img src="https://img.freepik.com/premium-photo/white-plate-with-salad-floating-air-ingredients-olives-lettuce-onion-tomato-mozzarella-cheese-parsley-basil-olive-oil-copy-space_120795-774.jpg"></span>
       <span style="--i:2"><img src="https://as1.ftcdn.net/v2/jpg/02/77/06/34/1000_F_277063416_OMCEemGvM8NzMFIZCmEdh9Ryv11cNd5c.jpg"></span>
       <span style="--i:3"><img src="https://t4.ftcdn.net/jpg/05/08/46/29/240_F_508462989_wHTfeUNxWoDkVLRlmirmYVX9EzQCdJO0.jpg"></span>
       <span style="--i:4"><img src="https://img.freepik.com/premium-photo/chicken-biriyani-using-jeera-rice-arranged-earthenware-with-raitha-grey-background_527904-8.jpg"></span>
       <span style="--i:5"><img src="https://as1.ftcdn.net/v2/jpg/03/05/13/84/1000_F_305138449_VQo4NgsPfJnWxHMwaw1fUuce6SG5ePMz.jpg"></span>
       <span style="--i:6"><img src="https://as2.ftcdn.net/v2/jpg/02/98/07/01/1000_F_298070142_xzOzEvVuN5vprfCb3JAfzVZF508RLtF8.jpg"></span>
       <span style="--i:7"><img src="https://t3.ftcdn.net/jpg/03/06/32/50/240_F_306325086_rRHmFccHKptOs8OjbqMg2Fbn4mWJJRZ0.jpg"></span>
       <span style="--i:8"><img src="https://t3.ftcdn.net/jpg/04/95/20/82/360_F_495208282_gGbIfEJLcgTLUvZQBTzPWF99hvEgHtzC.jpg	"></span>
       <span style="--i:9"><img src="https://t3.ftcdn.net/jpg/04/83/84/20/240_F_483842039_kS2gbHyoDPsY8sQTskshH5rqIQCvCUMP.jpg"></span>
      </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script>
      var swiper = new Swiper(".mySwiper", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
          rotate: 50,
          stretch: 0,
          depth: 100,
          modifier: 1,
          slideShadows: true,
        },
        pagination: {
          el: ".swiper-pagination",
        },
      });
    </script>
    
    <a href="#!" class="vanillatop"></a>
    
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
