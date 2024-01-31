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
                    <img src="images/enquiry.jpg"  style="margin-top:30px; width: 430px "/><br><br>
                    <h2 align="center" style="color: blue"> Enquiry Management</h2>
                    <table class="table table-bordered" style="width: 90%; margin: auto; text-align: center;">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Enquiry Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            dbManager dm=new dbManager();
                            String query="Select * from enquiry";
                            ResultSet rs=dm.select(query);
                            while(rs.next())
                            {
                                
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("gender") %></td>
                            <td><%= rs.getString("address") %></td>
                            <td><%= rs.getString("contactno") %></td>
                            <td><%= rs.getString("emailaddress") %></td>
                            <td><%= rs.getString("enquirytext") %></td>
                            <td><%= rs.getString("enquirydate") %></td>
                            <td>
                                <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                    <button class="btn btn-danger"> Delete</button>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
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
