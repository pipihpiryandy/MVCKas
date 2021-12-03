<%-- 
    Document   : login
    Created on : Nov 19, 2021, 9:01:05 AM
    Author     : piryandyp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" modelAttribute="emp" action="login/save.html" >
            <table align="center" >
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" ></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" ></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Login" ></td>
                </tr>
                <tr>
                    <td colspan="2" >${message}</td>
                </tr>
            </table>
        </form>
    </body>
</html>
