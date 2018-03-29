<%-- 
    Document   : Verification
    Created on : 02-Jul-2017, 23:13:35
    Author     : OLUWASEUN
--%>

<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usernameStored;
            String passwordStored;
            Connection con;
            PreparedStatement st1;
            PreparedStatement st2;
            PreparedStatement st3;
            ResultSet res1;
            ResultSet res2;
            ResultSet res3;
            %>
            <% 
            try
            {
       
               String usernameEntered = request.getParameter("username").trim();
               String passwordEntered = request.getParameter("password").trim();
               String Rolec = "Customer";
               String Rolem = "Manager";
               String Rolea = "Administrator";
               
               String sql = "SELECT * FROM verification WHERE (username = '"+usernameEntered+"' " + "And password= '"+passwordEntered+"' " + "And Role = '"+Rolec+"')";
               String sql2 = "SELECT * FROM verification WHERE (username = '"+usernameEntered+"' " + "And password= '"+passwordEntered+"' " + "And Role = '"+Rolem+"')";
               String sql3 = "SELECT * FROM verification WHERE (username = '"+usernameEntered+"' " + "And password= '"+passwordEntered+"' " + "And Role = '"+Rolea+"')";
               boolean verify = false;
               
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "Maidaday","root","smallvile");
            
            st1 = (PreparedStatement)
                    con.prepareStatement(sql);
            res1 = st1.executeQuery();
            st2 = (PreparedStatement)
                    con.prepareStatement(sql2);
            res2 = st2.executeQuery();
            st3 = (PreparedStatement)
                    con.prepareStatement(sql3);
            res3 = st3.executeQuery();
            
            boolean recordExists1 = res1.absolute(1);
            boolean recordExists2 = res2.absolute(1);
            boolean recordExists3 = res3.absolute(1);
            
            if(recordExists1 == true)
            {
                verify = true;
                if(verify == true){
                    response.sendRedirect("Customerpage.jsp");}
                con.close();
                
            }else if(recordExists2 == true)
            {
                verify = false;
                if(verify == false){
                    response.sendRedirect("Managerspage.jsp");}
                
                con.close();
            }
            
            else if(recordExists3 == true)
            {
                verify = true;
                if(verify == true){
                    response.sendRedirect("Administratorpage.jsp");}
                con.close();
                
            }
            else if(recordExists1 == false)
            {
                verify = false;
                if(verify == false){
                    response.sendRedirect("Registration.jsp");}
                con.close();
                
            } 
            
            else if(recordExists2 == false)
            {
                verify = true;
                if(verify == true){
                    response.sendRedirect("Registration.jsp");}
                
                con.close();
            }else if(recordExists3 == false)
            {
                verify = false;
                if(verify == false){
                    response.sendRedirect("Registration.jsp");}
                
                con.close();
            }
            }
            catch (SQLException ex)
                    {
                        ex.printStackTrace();
                    out.write("An error occured");
                    }
             
            %>
            
    </body>
</html>
