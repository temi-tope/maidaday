<%-- 
    Document   : insertorder
    Created on : 03-Jul-2017, 04:02:58
    Author     : OLUWASEUN
--%>

<%@page import="java.sql.ResultSet"%>
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
    <body>
         
        <%!
        String firstname,lastname,address,service;
        String time,username;
       String Role;
        %>
        <% 
            firstname = lastname = username = address = time = service ="";
            
           
            firstname =request.getParameter("fristname");
            lastname =request.getParameter("lastname");
            address =request.getParameter("address").trim();
            time =request.getParameter("time");
            
            username =request.getParameter("username");
            service =request.getParameter("service");
            boolean verify = true;
             try{
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "Maidaday","root","smallvile");
            Statement st = (Statement)
                    con.createStatement();
            
            ResultSet res = st.executeQuery ("SELECT username,firstname,lastname FROM registration");
            while(res.next()){
                String usernameStored = res.getString("username").trim();
                 String firstnameStored = res.getString("firstname").trim();
                  String lastnameStored = res.getString("lastname").trim();
                
            if((username.equals(usernameStored)&&firstname.equals(firstnameStored)&&lastname.equals(lastnameStored)))
                 {
                   verify = true;
                   break;
               }
               else
               {
                   verify = false;
               }
            }
            if(verify == true){
            if(firstname.equals("")||lastname.equals("")||address.equals("")||time.equals("")||service.equals("")||username.equals(""))
            {
                out.write("Empty fields, make sre you input data into all field before pushing the" + "REGISTER button");
            }else
            {
                String sql1 = "INSERT INTO ordertable Values('"+firstname+"','"+lastname+"','"+username+"','"+service+"','"+time+"','"+address+"')";
                
               
            
            st.executeUpdate(sql1);
            
            con.setAutoCommit(true);
            con.close();
            out.write("you have ordered");
            }
            }
            else if(verify == false)
            {
             %>
                
            <script type="text/javascript">
                      
                      alert("Invalid username");
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
    </body>
</html>

