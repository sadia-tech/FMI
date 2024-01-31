<%@page import="dbPack.dbManager"%>
<%
    
String id=request.getParameter("id");
    dbManager dm=new dbManager();
     String query="delete from news where id='"+id+"'";
    if(dm.insertUpdateDelete(query)==true)
    {
        out.print("<script>alert('News is deleted');window.location.href='news.jsp'</script>");
    }
    else
    {
        out.print("<script>alert('News is not deleted');window.location.href='news.jsp'</script>");
    }
    %>

   
    