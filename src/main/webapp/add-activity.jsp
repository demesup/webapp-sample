<%--
  Created by IntelliJ IDEA.
  User: guzan
  Date: 2/1/2023
  Time: 11:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add activity</title>
    <style>
        body {
            text-align: center;
            background-image: url("https://img.freepik.com/free-photo/top-view-background-beautiful-white-grey-brown-cream-blue-background_140725-72219.jpg?w=2000");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
            backdrop-filter: brightness(50%);
            margin: 0 0 0 0;
            padding-top:150px ;
            text-shadow: 1px 1px steelblue;
            color: beige;
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
<h2>Activity Input Form</h2>
<form method="post" action="/InsertActivity">
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

        ID: <input type="number" name="id" required pattern="\d{7}">

        <br><br>
        <%--        Gender: <input type="radio" name="gender" value="m" checked/>Male--%>
        <%--        <input type="radio" name="gender" value="f"/>Female<br/><br/>--%>
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
</body>
</html>
