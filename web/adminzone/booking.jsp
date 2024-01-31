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
                    <h2 style="color:blue;text-align: center;">List of Farmers</h2>
                    <table class="table table-bordered">
                        <tr>
                            <th>Reg. Id</th>
                            <th>Name</th>
                            <th>Village</th>
                            <th>Post</th>
                            <th>District</th>
                            <th>State</th>
                            <th>Pincode</th>
                            <th>Contact no</th>
                            <th>Aadhar no</th>
                            <th>Book</th>
                            <th>View</th>
                        </tr>
                             <%
        dbManager dm=new dbManager();
        ResultSet rs=dm.select("select *from farmerinfo");
        while(rs.next())
        {
            
        
        %>
         <tr>
             <td><%=rs.getString("regid")%></td>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("village")%></td>
             <td><%=rs.getString("post")%></td>
              <td><%=rs.getString("district")%></td>
               <td><%=rs.getString("state")%></td>
                <td><%=rs.getString("pincode")%></td>
                 <td><%=rs.getString("contactno")%></td>
                  <td><%=rs.getString("aadharno")%></td>
                  <td>
                      <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-success">Book</button>
                                </a>
                            </td>
             <td>
                      <a href="view.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-success">View</button>
                                </a>
                            </td>
            </tr>
        
            <%
        }
            %>
        
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
