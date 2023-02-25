<%@ page import="java.sql.*" %>
<%@ page import="demesup.model.Activity" %>
<%@ page import="demesup.servlet.ActivityServlet" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Activity</title>
    <style>
        body {
            text-align: center;
            background-image: url("https://wallpaperaccess.com/full/3248483.jpg");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 100% 100%;
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
            backdrop-filter: blur(5px);
            overflow: hidden;
            white-space: nowrap;
            color: blanchedalmond;
            margin: auto auto 100px auto;
        }

        table a {
            color: gold;
        }

        table a:hover {
            color: chocolate;
        }

        .button {
            text-align: center;
            vertical-align: middle;
            width: auto;
            height: auto;
            font-size: 1em;
            padding: 15px 25px;
            color: beige;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s ease-out;
            background: rgba(40, 40, 42, 0.65);
            backdrop-filter: blur(3px);
            z-index: 9;
            position: fixed;
            border-radius: 25%;
            bottom: 5%;
            right: 2%;
        }

        .overlay {
            margin: auto;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transition: opacity 500ms;
            visibility: hidden;
            opacity: 0;
            background: rgba(0, 0, 0, 0.8);
        }

        .overlay:target {
            visibility: visible;
            opacity: 1;
        }

        .wrapper {
            margin: 70px 20%;
            padding: 20px;
            background-image: url("https://w0.peakpx.com/wallpaper/30/145/HD-wallpaper-polygonal-abstract-red-dark-background-abstract-dark-red-deviantart.jpg");
            border-radius: 5px;
            width: 50%;
            position: relative;
            transition: all 5s ease-in-out;
            color: azure;
        }

        .wrapper h2 {
            margin: auto;
        }

        .wrapper .close {
            position: absolute;
            top: 20px;
            right: 30px;
            transition: all 200ms;
            font-size: 30px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }

        form {
            width: 50%;
            margin: auto;
        }

        fieldset {
            width: 101%;
        }
    </style>
</head>
<body>
<a href="#activity" class="button">Add activity</a>
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
            for (Activity activity : ActivityServlet.repository.getActivities()) {

    %>
    <tr>
        <td><%=activity.getKey()%>
        </td>
        <td><%=activity.getType()%>
        </td>
        <td><%=activity.getActivity()%>
        </td>
        <td><%=activity.getParticipants()%>
        </td>
        <td><a href="<%=activity.getLink()%>" target="_blank"><%=activity.getLink()%>
        </a>
        </td>
        <td><%=activity.getPrice()%>
        </td>
        <td><%=activity.getAccessibility()%>
        </td>
        <%
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        %>
    </tr>
</table>

<div class="overlay" id="activity">
    <div class="wrapper">
        <h2>Activity Input Form</h2>
        <a href="#" class="close">&times;</a>
        <div class="content">
            <form method="post" action="/activity">
                <fieldset>
                    <legend>General info</legend>
                    Type: <select name="type">
                    <option value="recreational">recreational</option>
                    <option value="charity">charity</option>
                    <option value="social">social</option>
                    <option value="cooking">cooking</option>
                    <option value="education">education</option>
                    <option value="music">music</option>
                    <option value="cooking">busywork</option>
                    <option value="education">relaxation</option>
                    <option value="music">diy</option>
                </select>

                    <br><br>

                    <textarea rows="2" cols="50" name="activity">Enter activity here...</textarea>

                    <br><br>

                    Participants: <select name="participants">
                    <option value="1">1 participant</option>
                    <option value="2">2 participants</option>
                    <option value="3">3 participants</option>
                    <option value="4">4 participants</option>
                    <option value="5">5 participants</option>
                    <option value="6">6 participants</option>
                    <option value="7">7 participants</option>
                    <option value="8">8 participants</option>
                    <option value="9">9 participants</option>
                    <option value="10">10 participants</option>
                    <option value="11">11 participants</option>
                    <option value="12">12 participants</option>
                </select>
                </fieldset>

                <fieldset>
                    <legend>Approachability</legend>
                    Price: <input type="number" step="0.01" name="price" min="0" max="1"/>
                    Accessibility: <input type="number" step="0.01" name="accessibility" min="0" max="1"/>
                </fieldset>

                <fieldset>
                    <legend>Link</legend>
                    <textarea rows="2" cols="50" name="link">Enter link(if present) here...</textarea>
                </fieldset>

                <input type="submit" value="SEND"/>
                <input type="reset" value="CLEAR"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>
