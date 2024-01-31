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
                              <h2 style="color:blue; text-align: center">Do Payment</h2>
                    <%
                         dbManager dm=new dbManager();
                         String ano=request.getParameter("ano");
                         String query="select * from booking where aadharno='"+ano+"'";
                         ResultSet rs=dm.select(query); 
                         if (rs.next())
                         {
                             
                     %>
                     <form class="form-group" method="post" action="admincontroller.jsp">
                         <input type="hidden" name="page" value="payment" />
                         <table class="table table-bordered" style="width:60%; margin: auto; text-align: center">
                             <tr>
                                 <td>Aadhar No</td>
                                 <td>
                                     <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Total Amount</td>
                                 <td>
                                    <input type="text" name="totalamt" value="<%=rs.getString("totalamt")%>" class="form-control" readonly/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Rest Amount</td>
                                 <td>
                                     <input type="text" name="restamt" value="<%=rs.getString("restamt")%>" class="form-control" readonly/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Pay Amount</td>
                                 <td>
                                     <input type="number" name="payamt" value="" class="form-control">
                                 </td>
                             </tr>
                             <tr>
                                 <td></td>
                                 <td>
                                     <button type="submit" class="btn btn-outline-success">Pay</button>
                                 </td>
                             </tr>
                         </table>
                     </form>
                     <% } %>                                                                                                                                                                   ,
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