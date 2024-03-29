<%-- 
    Document   : aboutus
    Created on : Sep 19, 2023, 10:52:47 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/animate.min.css" rel="stylesheet" type="text/css">
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <script src="js/wow.min.js" type="text/javascript"></script>
        <script>
              new WOW().init();
         </script>
         <style>
             #testbg{
                      background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.dev/svgjs' width='1440' height='300' preserveAspectRatio='none' viewBox='0 0 1440 300'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1027%26quot%3b)' fill='none'%3e%3crect width='1440' height='300' x='0' y='0' fill='rgba(21%2c 79%2c 139%2c 1)'%3e%3c/rect%3e%3cpath d='M31 300L331 0L509.5 0L209.5 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1028%26quot%3b)'%3e%3c/path%3e%3cpath d='M258.6 300L558.6 0L722.1 0L422.1 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1028%26quot%3b)'%3e%3c/path%3e%3cpath d='M503.20000000000005 300L803.2 0L926.2 0L626.2 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1028%26quot%3b)'%3e%3c/path%3e%3cpath d='M734.8000000000001 300L1034.8000000000002 0L1114.3000000000002 0L814.3000000000001 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1028%26quot%3b)'%3e%3c/path%3e%3cpath d='M1420 300L1120 0L872.5 0L1172.5 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1029%26quot%3b)'%3e%3c/path%3e%3cpath d='M1188.4 300L888.4000000000001 0L805.9000000000001 0L1105.9 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1029%26quot%3b)'%3e%3c/path%3e%3cpath d='M924.8 300L624.8 0L581.3 0L881.3 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1029%26quot%3b)'%3e%3c/path%3e%3cpath d='M717.1999999999999 300L417.19999999999993 0L219.19999999999993 0L519.1999999999999 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1029%26quot%3b)'%3e%3c/path%3e%3cpath d='M1215.0385736154765 300L1440 75.03857361547654L1440 300z' fill='url(%26quot%3b%23SvgjsLinearGradient1028%26quot%3b)'%3e%3c/path%3e%3cpath d='M0 300L224.96142638452346 300L 0 75.03857361547654z' fill='url(%26quot%3b%23SvgjsLinearGradient1029%26quot%3b)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1027'%3e%3crect width='1440' height='300' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1028'%3e%3cstop stop-color='rgba(3%2c 15%2c 41%2c 0.2)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(3%2c 15%2c 41%2c 0.2)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1029'%3e%3cstop stop-color='rgba(3%2c 15%2c 41%2c 0.2)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(3%2c 15%2c 41%2c 0.2)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
                  }
                  #abtbg{
                  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.dev/svgjs' width='1440' height='600' preserveAspectRatio='none' viewBox='0 0 1440 600'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1364%26quot%3b)' fill='none'%3e%3crect width='1440' height='600' x='0' y='0' fill='url(%26quot%3b%23SvgjsLinearGradient1365%26quot%3b)'%3e%3c/rect%3e%3cpath d='M0 0L222.91 0L0 118.39z' fill='rgba(255%2c 255%2c 255%2c .1)'%3e%3c/path%3e%3cpath d='M0 118.39L222.91 0L890.43 0L0 201.06z' fill='rgba(255%2c 255%2c 255%2c .075)'%3e%3c/path%3e%3cpath d='M0 201.06L890.43 0L909.1099999999999 0L0 358.59000000000003z' fill='rgba(255%2c 255%2c 255%2c .05)'%3e%3c/path%3e%3cpath d='M0 358.59000000000003L909.1099999999999 0L1112.9499999999998 0L0 381.93z' fill='rgba(255%2c 255%2c 255%2c .025)'%3e%3c/path%3e%3cpath d='M1440 600L886.32 600L1440 556.65z' fill='rgba(0%2c 0%2c 0%2c .1)'%3e%3c/path%3e%3cpath d='M1440 556.65L886.32 600L774.82 600L1440 280.34999999999997z' fill='rgba(0%2c 0%2c 0%2c .075)'%3e%3c/path%3e%3cpath d='M1440 280.34999999999997L774.82 600L625.84 600L1440 209.90999999999997z' fill='rgba(0%2c 0%2c 0%2c .05)'%3e%3c/path%3e%3cpath d='M1440 209.90999999999997L625.84 600L605.33 600L1440 83.63999999999997z' fill='rgba(0%2c 0%2c 0%2c .025)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1364'%3e%3crect width='1440' height='600' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='85.42%25' y1='135%25' x2='14.58%25' y2='-35%25' gradientUnits='userSpaceOnUse' id='SvgjsLinearGradient1365'%3e%3cstop stop-color='%230e2a47' offset='0'%3e%3c/stop%3e%3cstop stop-color='rgba(21%2c 116%2c 239%2c 1)' offset='1'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
                  }
         </style>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            
            <div class="row mt-2 text-light" id="abtbg">
                <!--<div class="col-sm-" style="min-height: 600px; "></div>-->
                
                <div class="col-sm-8 mt-2 wow fadeIn" style="min-height: 600px;background-color: #86b0aa ">
                    <h2 class="mt-2" style="text-align: center; color: white;">About Us</h2>
                    <p class="mt-4">We are in the cold storage business since over 2 decades. Our storage capacity is about 8500 metric tones at temperatures varying from 0 to 10 Celsius. Dry Storage facilities are also available in same premises.<br>The key driving force is our enthusiasm in embracing new ideas to traditional services. Perhaps more importantly, the real difference between the competition and us is the experience, commitment and enthusiasm of its management and staff.</p>
                    <p>The key to the firm's success has been the forging of lasting partnerships with its customers, providing them with innovative solutions and efficient service. We take pride in evolving with the industries we serves. We are committed to doing whatever is necessary to help our customers prosper.</p>
                    <p>So, whatever size your business - a small one looking to grow or a large one looking to streamline - if cold / chill storage , dry storage is an intrinsic part of what you require - talk to SFI cold storage today.</p>
                    <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"  aria-controls="collapseOne">
                          Our Vision
                        </button>
                      </h2>
                      <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          To be an independent, innovative, honest and sustainable cooperative in which customers are able to choose from a wide range of goods at reasonable prices.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo"  aria-controls="collapseTwo">
                          Our Mission 
                        </button>
                      </h2>
                      <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          To satisfy our partners and customers with a unique shopping experience offering quality, variety, price and service, based on the attention and commitment of our employees.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree"  aria-controls="collapseThree">
                          Our Core Values
                        </button>
                      </h2>
                      <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                          To listen to the customers, the employees, the suppliers and to our environment, to provide products, training, information, welfare, development and sustainability, and to be responsible through commitment, honesty and respect.
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="col-sm-4" style="min-height: 500px;background: linear-gradient(to right, #86b0aa, #86b0aa); color: white;">
                    <img src="images/Krishna.jpg"  style="margin-top:20px; width: 430px "/><br><br>
                    <h4>Mr. Krishna Singh </h4>
                    <h5>CEO Softpro India Cold Storage</h5>
                </div>
            </div>
            
           
            
            <div class="row mt-2 text-light" style="min-height: 300px;background-color:#86b0aa" id="testbg";>
                <h3 align="center" class="mt-4">Testimonials </h3>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner wow slideInRight" >
                        <div class="carousel-item active ">
                            <p style="font-size: 20px; font-style: italic;">“The Cold Store, Temperature Monitoring Equipment & Alarm Systems have met with our requirements.  The service back-up is also excellent."</p>
                            <p style="font-size: 20px;">Brijesh Mishra</p>
                        </div>
                        <div class="carousel-item">
                            <p style="font-size: 20px; font-style: italic;">“We have an ongoing business with CRS Rent A Fridge Limited since 1996 for the supply of mobile temperature control storage, and can further confirm our satisfaction with the service and condition of equipment supplied."</p>
                            <p style="font-size: 20px;">Sadia</p>
                        </div>
                        <div class="carousel-item">
                            <p style="font-size: 20px; font-style: italic;">“The Cold Store, Temperature Monitoring Equipment & Alarm Systems have met with our requirements.  The service back-up is also excellent."</p>
                            <p style="font-size: 20px;">Fizza</p>
                        </div>
                        <div class="carousel-item">
                            <p style="font-size: 20px; font-style: italic;">"Very nice facilities, well maintained Really need to appreciate your management and staff for the services."</p>
                            <p style="font-size: 20px;">Alka</p>
                        </div>
                        <div class="carousel-item">
                            <p style="font-size: 20px; font-style: italic;">"Being importers of dry fruits & spices, we need a committed refrigeration partner. SFI Cold can provide the best logistics management that matches our requirements. Highest levels of dedication, care towards the inventories, & customer relations has made them our preferred cold storage partner since 3 years."</p>
                            <p style="font-size: 20px;">Shakshi</p>
                        </div>
                    </div>
                    
                </div>
                </div>
                
                
                <div class="col-sm-2"></div>
                
            </div>
            
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
