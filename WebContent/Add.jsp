
<%@page import="com.higradius.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%
String name_customer=request.getParameter("name_customer");
String cust_number=request.getParameter("cust_number");
String invoice_id=request.getParameter("invoice_id");
String total_open_amount=request.getParameter("total_open_amount");
String due_in_date=request.getParameter("due_in_date");
/* String notes=request.getParameter("Notes"); */

try
{
    Connection conn = ConnectionPro.getCon();
    PreparedStatement ps = conn.prepareStatement("insert into mytable(name_customer,cust_number,invoice_id,total_open_amount,due_in_date,Notes) value(?,?,?,?,?,?)");
    ps.setString(1,name_customer);
    ps.setString(2,cust_number);
    ps.setString(3,invoice_id);
    ps.setString(4,total_open_amount);
    ps.setString(5,due_in_date);
    /* ps.setString(6,notes); */
    int x = ps.executeUpdate();
    if (x>0){
       response.sendRedirect("index.jsp");
    }else{
      out.println("failure");
    }
   
    }
catch(Exception e)
{
     out.println(e);
     }
%>