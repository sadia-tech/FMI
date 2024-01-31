<%@page import="java.sql.ResultSet"%>
<%@page import="dbPack.dbManager"%>
<%
    String ano=request.getParameter("ano");
    dbManager dm=new dbManager();
    String query="select*from booking where aadharno='"+ano+"'";
    ResultSet rs=dm.select(query);
    if(rs.next())
    {
     
            out.print("<script>alert('Booking is alreday done');window.location.href='booking.jsp';</script>");

    }
    else
    {
        session.setAttribute("ano", ano);
        response.sendRedirect("book.jsp");
     out.print("<script>alert('Booking is not done');window.location.href='book.jsp';</script>");
   
    }
    %>