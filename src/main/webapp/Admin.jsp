<%-- 
    Document   : adminsitrador
    Created on : 12/05/2021, 07:56:44 PM
    Author     : 57320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <center>
        <div>
            <<h3>Admin</h3> 
            <form action="controlador" method="POST">
                <input type="submit" name="accion" value="Listar">
            </form>
        </div>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRES</th>
                        <th>APELLIDOS</th>
                        <th>CORREO</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>  
            </table>
        </div>
    </center>
    </body>
</html>