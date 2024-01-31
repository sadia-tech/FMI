<%-- 
    Document   : contactus
    Created on : Sep 11, 2023, 12:18:00 PM
    Author     : 123oj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            
            <jsp:include page="header.jsp"/>
            
            <!--------------------------Content area Starts------------------------------->
            
            
            
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px;">
                    <img src="images/enquiry.jpg"  style="margin-top:20px; width: 430px "/><br><br>
                </div>
                <div class="col-sm-8" style="min-height: 600px; background-color: aliceblue;">
                    <h2 style="text-align: center; color: blue;">Enquiry Form</h2>
                    <form class="form-group mt-5" method="post" action="controller.jsp" >
                        <input type="hidden" name="page" value="contactus"/>
                        <table class="table" style="width: 80%;margin: auto;">
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <input type="text" name="name" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Select Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Address</td>
                                <td>
                                    <textarea name="address" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Contact no</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Email Address</td>
                                <td>
                                    <input type="text" name="emailaddress" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enquiry Text</td>
                                <td>
                                    <textarea name="enquirytext" class="form-control"></textarea>
                                </td>
                            </tr>
                  
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-outline-success">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            
            
            <!--------------------------Content area Ends--------------------------------->
            
            <jsp:include page="footer.jsp"/>
                
            
        </div>
    </body>
</html>