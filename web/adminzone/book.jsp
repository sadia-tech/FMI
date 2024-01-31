<%@page import="java.sql.ResultSet"%>
<%@page import="dbPack.dbManager"%>
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
                    <h2 style="color:blue;text-align: center;">Booking Form</h2>
                    <% 
        String aadharno=session.getAttribute("ano").toString();
        dbManager dm=new dbManager();
        String query="select*from farmerinfo where aadharno='"+aadharno+"'";
        ResultSet rs=dm.select(query);
        if(rs.next())
        {
        %> 
        <form class="form-group" method="post" action="admincontroller.jsp">
            <input type="hidden" name="page" value="book"/>
  
            <table class="table table-bordered" style="margin:auto; width:70%;" >
                <tr>
                    <td>Registration Id</td>
                    <td>
                        <input type="text" name="regid" value="<%=rs.getString("regid")%>" class="form-control" readonly/>
                    </td>
                </tr>
                <tr>
                    <td>Farmer Name</td>
                    <td>
                      <input type="text" name="name" value="<%=rs.getString("name")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>Village</td>
                    <td>
                      <input type="text" name="village" value="<%=rs.getString("village")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>Post</td>
                    <td>
                      <input type="text" name="Post" value="<%=rs.getString("post")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>District</td>
                    <td>
                      <input type="text" name="district" value="<%=rs.getString("district")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>
                      <input type="text" name="state" value="<%=rs.getString("state")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>Pincode</td>
                    <td>
                      <input type="text" name="Pincode" value="<%=rs.getString("pincode")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>Contact No</td>
                    <td>
                      <input type="text" name="contactno" value="<%=rs.getString("contactno")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>Aadhar no</td>
                    <td>
                      <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>  
                    </td>
                </tr>
                <tr>
                    <td>Number of packets</td>
                    <td>
                      <input type="text" required name="noofpacket"  class="form-control" />  
                    </td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td>
                        <input type="text" required="" name="duration"  class="form-control" />  
                    </td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td>
                      <input type="text" required name="rate"  class="form-control" />  
                    </td>
                </tr>
                <tr>
                    <td>Advance Amount</td>
                    <td>
                      <input type="text" required name="advanceamt"  class="form-control" />  
                    </td>
                </tr>
                
               
                <tr>
                    <td></td>
                    <td>
                        <button type="submit" class="btn btn-success">Booking confirmed</button>
                    </td>
                </tr>
            </table>
                   
        </form>
       <% }%>
                
                    
                    
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
