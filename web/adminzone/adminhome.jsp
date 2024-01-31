<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style.css"  rel="stylesheet" type="text/css">
        <script src="../js/bootstrap.bundle.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-2" id="logo" style="min-height: 150x;"></div>
                <div class="col-sm-10" id="bg" style="min-height: 150px;">
                    <h1 class="mt-4">Farmer Merchant Integration</h1>
                </div>
            </div>
            
            <jsp:include page="header.jsp"/>
            
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue">
                    <div class="row " style="background: radial-gradient(circle, rgba(24,214,116,1) 0%, rgba(39,101,107,1) 100%, rgba(255,255,255,1) 100%);">
                
                <div class="col-sm-8 mt-4 wow slideInUp " style="min-height: 600px; ">
                    <h2 style="text-align: center; color: white;">About Us</h2>
                    <p class="mt-4 text-light" style="text-align: justify">We are in the cold storage business since over 2 decades. Our storage capacity is about 8500 metric tones at temperatures varying from 0 to 10 Celsius. Dry Storage facilities are also available in same premises.<br>The key driving force is our enthusiasm in embracing new ideas to traditional services. Perhaps more importantly, the real difference between the competition and us is the experience, commitment and enthusiasm of its management and staff.</p>
                    <p class="text-light" style="text-align: justify">The key to the firm's success has been the forging of lasting partnerships with its customers, providing them with innovative solutions and efficient service. We take pride in evolving with the industries we serves. We are committed to doing whatever is necessary to help our customers prosper.</p>
                    <p class="text-light" style="text-align: justify">So, whatever size your business - a small one looking to grow or a large one looking to streamline - if cold / chill storage , dry storage is an intrinsic part of what you require - talk to SFI cold storage today.</p>
                    <p class="mt-4 text-light" style="text-align: justify">We are in the cold storage business since over 2 decades. Our storage capacity is about 8500 metric tones at temperatures varying from 0 to 10 Celsius. Dry Storage facilities are also available in same premises.<br>The key driving force is our enthusiasm in embracing new ideas to traditional services. Perhaps more importantly, the real difference between the competition and us is the experience, commitment and enthusiasm of its management and staff.</p>
                    <p class="text-light" style="text-align: justify">The key to the firm's success has been the forging of lasting partnerships with its customers, providing them with innovative solutions and efficient service. We take pride in evolving with the industries we serves. We are committed to doing whatever is necessary to help our customers prosper.</p>
                    <p class="text-light" style="text-align: justify">So, whatever size your business - a small one looking to grow or a large one looking to streamline - if cold / chill storage , dry storage is an intrinsic part of what you require - talk to SFI cold storage today.</p>
                    
                </div>
                
                <div class="col-sm-4 mt-4  wow slideInUp" style="min-height: 600px; ">
                    <img src="../images/neelam.jpg" style="width: 400px;"/>
                    <h4 style="text-align: center; color: white">Mrs. Neelam Khanna </h4>
                    <h5 style="text-align: center; color: white">Executive Head of Softpro India Cold Storage</h5>
                </div>
            </div>
                </div>
            </div>
            <div class="row"  style="background-image: linear-gradient(120deg, #d4fc79 0%, #96e6a1 100%);">
                <div class="col-sm-6" id="ft" style="height: 80px;">
                    <h1>Copyright &copy; to Farmer Merchant Integration</h1>
                </div>
                <div class="col-sm-6" id="ft" style="height: 80px;">
                    <h1>Developed By : Sadia</h1>
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>
