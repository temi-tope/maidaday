<%-- 
    Document   : Assign
    Created on : 04-Jul-2017, 10:39:18
    Author     : OLUWASEUN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    
         
        <%!
        String firstname,lastname,address,email;
        String sex,username,password,conpassword;
       String Role;
       Connection con;
       
            PreparedStatement st1;
            ResultSet res1;
        %>
        <% 
            firstname = lastname = username = address = conpassword = email ="";
            sex = "";password = "";
           
            
            username =request.getParameter("username");
            
            Role = request.getParameter("Role");
            
           
            boolean verify = true;
            try{
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/Maidaday","root","smallvile");
            Statement st = (Statement)
            con.createStatement();
            ResultSet res = st.executeQuery ("SELECT username FROM registration");
             
            while(res.next())
            {
               String usernameStored = res.getString("username").trim();
               
               
               if((username.equals(usernameStored)))
               {
                   verify = true;
                   break;
               }
               else
               {
                   verify = false;
               }
            }
            if(verify == true)
            {  PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE registration SET Role ='"+Role+"' WHERE username = '"+username+"'" );
                ps.executeUpdate();
                PreparedStatement ps1 = (PreparedStatement) con.prepareStatement("UPDATE verification SET Role ='"+Role+"' WHERE username = '"+username+"'" );
                ps1.executeUpdate();
                
                response.sendRedirect("Assignrole.jsp");
                
            } else
            {%>
                
                <script type="text/javascript">
                      alert("Username does not exist");
                       window.close();
                    </script>;
                 


        <% 
            }
            
            }
            catch(Exception ex)
            {
                
                out.write("Error");
            }
            
            
        %>
    
</html>

