<%-- 
    Document   : insert
    Created on : 02-Jul-2017, 23:49:49
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
           
            firstname =request.getParameter("fristname");
            lastname =request.getParameter("lastname");
            address =request.getParameter("address").trim();
            email =request.getParameter("email");
            sex =request.getParameter("sex");
            username =request.getParameter("username");
            password =request.getParameter("password");
            conpassword = request.getParameter("conpassword");
            Role = "Customer";
            
           
            boolean verify = true;
            try{
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/Maidaday","root","smallvile");
            Statement st = (Statement)
            con.createStatement();
            ResultSet res = st.executeQuery ("SELECT username,password,Role FROM registration");
             
            while(res.next())
            {
               String usernameStored = res.getString("username").trim();
               String passwordStored = res.getString("password").trim();
               
               if((username.equals(usernameStored))||(password.equals(passwordStored)))
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
            { %>
                
            <script type="text/javascript">
                      alert("Username or Password already exists");
                       window.close();
                    </script>;
                 
            <% //response.sendRedirect("Registration.jsp");
                
            } else
            if(firstname.equals("")||lastname.equals("")||address.equals("")||email.equals("")||sex.equals("")||username.equals("")||conpassword.equals("")||password.equals(""))
            {%>
                
                <script type="text/javascript">
                      alert("Make sure you all fields are filled");
                       window.close();
                    </script>;
                 


        <% //response.sendRedirect("Registration.jsp");
            }else if(verify == false)
            {
                String sql1 = "INSERT INTO registration Values('"+firstname+"','"+lastname+"','"+sex+"','"+address+"','"+email+"','"+username+"','"+password+"','"+conpassword+"','"+Role+"')";
                String sql2 = "INSERT INTO verification Values('"+username+"','"+password+"','"+Role+"')";
                
            
                    con.createStatement();
            
            st.executeUpdate(sql1);
            st.executeUpdate(sql2);
            con.setAutoCommit(true);
            con.close();
             %>
                
                <script type="text/javascript">
                      alert("Registration successful");
                       window.close();
                    </script>;
                 


        <% 
            response.sendRedirect("index.jsp");
            
                    }
            con.close();
            }
            catch(Exception ex)
            {
                
                out.write("Error");
            }
            
            
        %>
    
</html>
