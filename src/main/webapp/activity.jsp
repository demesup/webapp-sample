<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Activity</title>
    <style>
        body {
            background-image: url("https://wallpaperaccess.com/full/3248483.jpg");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            color: blanchedalmond;
        }

        tr:first-child {
            color: gold;
            font-size: x-large;
            text-shadow: 2px 1px 1px dodgerblue;
        }

        td:first-child {
            font-style: italic;
            font-weight: bold;
        }

        table {
            text-align: center;
            width: 80%;
            align-self: center;
            margin:auto;
            backdrop-filter: blur(5px);
            overflow: hidden;
            white-space: nowrap;
        }

        a {
            color: gold;
        }

        a:hover {
            color: chocolate;
        }
    </style>
</head>
<body>
<table border="1" width="100%">
    <tr>
        <td>id</td>
        <td>type</td>
        <td>activity</td>
        <td>participants</td>
        <td>link</td>
        <td>price</td>
        <td>accessibility</td>
    </tr>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/http_request_db";
            String username = "root";
            String password = "152120";
            String query = "select * from activity";
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getInt("key_num")%>
        </td>
        <td><%=rs.getString("type")%>
        </td>
        <td><%=rs.getString("activity")%>
        </td>
        <td><%=rs.getInt("participants")%>
        </td>
        <td><a href="<%=rs.getString("link")%>" target="_blank"><%=rs.getString("link")%>
        </a>
        </td>
        <td><%=rs.getFloat("price")%>
        </td>
        <td><%=rs.getFloat("accessibility")%>
        </td>
    </tr>
    <%
        }
    %>
</table>
<%
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }


%>
</body>
</html>
