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
                    
                        <%
                            dbManager dm=new dbManager();
                            String ano=request.getParameter("ano");
                            String query="select * from booking where aadharno='"+ano+"'";
                            ResultSet rs=dm.select(query);
                            if(rs.next())
                            {
                        %>
                        <h2 align="center" style="blue">Booking Details</h2>
                     <table class="table table-bordered" style="width: 60%;margin: 0 auto">   
                         <tr>
                             <td>Registration Id</td>
                             <td><%=rs.getString("regid")%></td>
                         </tr>
                        <tr>
                             <td>Farmer Name</td>
                             <td><%=rs.getString("name")%></td>
                         </tr>
                         <tr>
                             <td>Village</td>
                             <td><%=rs.getString("village")%></td>
                         </tr>
                         <tr>
                             <td>Post</td>
                             <td><%=rs.getString("post")%></td>
                         </tr>
                         <tr>
                             <td>District</td>
                             <td><%=rs.getString("District")%></td>
                         </tr><tr>
                             <td>State</td>
                             <td><%=rs.getString("state")%></td>
                         </tr>
                         <tr>
                             <td>Pincode</td>
                             <td><%=rs.getString("pincode")%></td>
                         </tr>
                         <tr>
                             <td>Contact No</td>
                             <td><%=rs.getString("contactno")%></td>
                         </tr><tr>
                             <td>Aadhar No</td>
                             <td><%=rs.getString("aadharno")%></td>
                         </tr>
                         <tr>
                             <td>No of Packet</td>
                             <td><%=rs.getString("noofpacket")%></td>
                         </tr>
                         <tr>
                             <td>Duration</td>
                             <td><%=rs.getString("duration")%></td>
                         </tr>
                         <tr>
                             <td>Rate</td>
                             <td><%=rs.getString("rate")%></td>
                         </tr>
                         <tr>
                             <td>Total Amount</td>
                             <td><%=rs.getString("totalamt")%></td>
                         </tr><tr>
                             <td>Advance Amount</td>
                             <td><%=rs.getString("advanceamt")%></td>
                         </tr>
                         <tr>
                             <td>Rest Amount</td>
                             <td><%=rs.getString("restamt")%></td>
                         </tr><tr>
                             <td>Booking Date</td>
                             <td><%=rs.getString("bookingdate")%></td>
                         </tr>
                    </table>
                        <%
                            }
                            else
                            {
                        %>
                        <h2 align="center" style="blue">Booking is not Available</h2>
                        <%}%>
                   
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