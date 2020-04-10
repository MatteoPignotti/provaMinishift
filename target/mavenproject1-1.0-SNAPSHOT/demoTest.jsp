<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%@ page import = "java.sql.*"%>
        <%
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.99.100:3306/test?autoReconnect=true&useSSL=false","root","example");
            Statement st = conn.createStatement();
            st.executeUpdate("INSERT INTO registration(id,firstName,lastName,gender,email,password)VALUES(NULL,'"+firstName+"','"+lastName+"','"+gender+"','"+email+"','"+password+"')");
            out.println("inserimento giusto");
        }catch(Exception e){
        out.println(e);
        }
        %>
    </body>
</html>
