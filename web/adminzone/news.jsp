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
                    <h2 align="center" style="color: blue">Add News & Events</h2>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                       
                        <input type="hidden" name="page" value="news">
                        <table class="table table-bordered" style="width: 70%;margin: auto;">
                            <tr>
                                <td>Enter news</td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-outline-success">Add</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br/>
                    <h2 style="text-align: center;color: blue">News Management</h2>
                    <table class="table table-border" style="width:80%; margin:auto">
                        <tr>
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
        dbManager dm=new dbManager();
        ResultSet rs=dm.select("select *from news");
        while(rs.next())
        {
            
        
        %>
       
        <tr>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("newstext")%></td>
            <td><%=rs.getString("posteddate")%></td>
            <td>
                <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                    <button class="btn btn-danger">Delete</button>
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
