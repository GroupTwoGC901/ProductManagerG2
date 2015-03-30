<%-- 
    Document   : edit_product
    Created on : Mar 30, 2015, 12:51:23 PM
    Author     : SonNguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        ID: ${param.pro_id}<br/>
        <form action="edit_product" method="post">
            <input type="hidden" name="pro_id" value="${param.pro_id}"/>
            Name: <input type="text" name="pro_name"/><br/>
            Price: <input type="text" name="pro_price"/><br/>
            <input type="submit" value="Done"/>
        </form>
    </table>
</body>
</html>
