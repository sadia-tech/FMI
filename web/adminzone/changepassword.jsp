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
        <script>
            function validate()
            {
                var op=document.getElementById("oldpassword");
                var np=document.getElementById("newpassword");
                var cp=document.getElementById("confirmpassword");
                if(op.value=="" || op.value==null)
                {
                    alert('Please enter old password');
                    op.focus();
                }
                else if(np.value=="" || np.value==null)
                {
                    alert('Please enter new password');
                    np.focus();
                }
                else if(cp.value=="" || np.value==null)
                {
                    alert('Please enter confirm password');
                    cp.focus();
                }
                else if(np.value!=cp.value)
                {
                    alert('Confirm password is not matched');
                }
                else
                {
                    document.getElementById("frmchangepassword").submit();
                }
            }
        </script>
        <div class="container">
            <div class="row">
                <div class="col-sm-2" id="logo" style="min-height: 150x;"></div>
                <div class="col-sm-10" id="bg" style="min-height: 150px;">
                    <h1 class="mt-4">Farmer Merchant Integration</h1>
                </div>
            </div>
            
            <jsp:include page="header.jsp"/>
            
            <div class="row mt-2" >
                <div class="col-sm-12" style="min-height: 600px;background-image: url(../images/passbg2.jpg);background-size: 100% 100%;">
                    <div style="height:400px;width: 700px; background-color: rgba(0,0,0,0.256); border: 1px solid; margin:100px auto; box-shadow: 0 0 30px black">
                    <h2 align="center">Change Password</h2>
                    <form class="from-group mt-5" method="post" id="frmchangepassword" onsubmit="event.preventDefault(); validate()" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="changepassword" />
                        <table class="table table-bordered" style="width:60%;margin: auto;">
                            <tr>
                                <td class="bg-transparent" style="color:white;">Enter Old Password</td>
                                <td class="bg-transparent">
                                    <input type="password" name="oldpassword" id="oldpassword" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <td class="bg-transparent" style="color:white;">Enter New Password</td>
                                <td class="bg-transparent">
                                    <input type="password" name="newpassword" id="newpassword"  class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="bg-transparent" style="color:white;">Confirm Password</td>
                                <td class="bg-transparent">
                                    <input type="password" name="confirmpassword" id="confirmpassword"  class="form-control"/>
                                </td>
                            </tr>
                        </table>
                        <div class="d-grid mt-3 col-5 mx-auto">
                        <button type="submit" class="btn btn-outline-success" style="color:black;">Change</button>
                        </div>
                    </form>
                    </div>>
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
