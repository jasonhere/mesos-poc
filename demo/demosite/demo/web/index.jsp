<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="demo.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>MySQl Demo</title>
    <style type="text/css">
        body, input, textarea, keygen, select, button, table, tr, td  {
            font-size: 16px;
            line-height: 24px;
        }

        th td
        {
            padding: 6px;
            margin: 6px;
            vertical-align: middle;
        }
    </style>
</head>

<body>
<div>
    <h2>Results</h2>
    <a href="create.jsp" target="_self">Create</a>
    <% ArrayList<User> users = (ArrayList<User>) request.getAttribute("users"); %>
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <th>user_id</th>
            <th>user_name</th>
            <th>user_pass</th>
            <th>email</th>
            <th>operation</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.getId()}</td>
                <td>${user.getName()}</td>
                <td>${user.getPassword()}</td>
                <td>${user.getEmail()}</td>
                <td>
                    <form method="post" target="_self" action="delete">
                        <input type="hidden" value="${user.getId()}" name="user_id">
                        <input type="submit" value="Delete"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<%--<%--%>
    <%--Connection con;--%>
    <%--Statement sql;--%>
    <%--ResultSet rs;--%>
    <%--try--%>
    <%--{--%>
        <%--Class.forName(Driver.class.getName()).newInstance();--%>
    <%--}--%>
    <%--catch (Exception e) {--%>
        <%--out.print(e);--%>
    <%--}--%>
    <%--try--%>
    <%--{--%>
        <%--String uri = "jdbc:mysql://10.0.0.101:3306/demo";--%>
        <%--con = DriverManager.getConnection(uri, "root", "my-secret-pw");--%>
        <%--sql = con.createStatement();--%>
        <%--rs = sql.executeQuery("SELECT * FROM users");--%>
        <%--out.print("<table border=2>");--%>
        <%--out.print("<tr>");--%>
        <%--out.print("<th width=100>" + "user_id");--%>
        <%--out.print("<th width=100>" + "user_name");--%>
        <%--out.print("<th width=100>" + "user_pass");--%>
        <%--out.print("<th width=100>" + "email");--%>
        <%--out.print("</tr>");--%>
        <%--while (rs.next()) {--%>
            <%--out.print("<tr>");--%>
            <%--out.print("<td>" + rs.getString(1) + "</td>");--%>
            <%--out.print("<td>" + rs.getString(2) + "</td>");--%>
            <%--out.print("<td>" + rs.getString(3) + "</td>");--%>
            <%--out.print("<td>" + rs.getString(4) + "</td>");--%>
            <%--out.print("</tr>");--%>
        <%--}--%>
        <%--out.print("</table>");--%>
        <%--con.close();--%>
    <%--}--%>
    <%--catch (SQLException e1) {--%>
        <%--out.print(e1);--%>
    <%--}--%>
    <%--%>--%>
</body>
</html>
