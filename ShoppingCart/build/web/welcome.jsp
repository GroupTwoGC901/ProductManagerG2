<%-- 
    Document   : welcome
    Created on : Mar 25, 2015, 11:40:44 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <%
            if (request.getSession() == null) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        %>

        <h1>Welcome, ${username}</h1>
        <br>
        List Product: 
        <br>

        <table>    
            <c:forEach items="${proList}" var="pro">
                <tr>
                    <td>${pro.id}</td>
                    <td>${pro.name}</td>
                    <td>${pro.price}</td>
                    <td>
                        <form name="edit" action="edit_product.jsp" method="post">
                            <input type="submit" value="Edit"/>
                            <input type="hidden" name="pro_id" value="${pro.id}"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
