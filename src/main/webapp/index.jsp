<html>
<head>
    <title>Main</title>
    <style>
        body {
            background-image: url("https://cococlips.com/doggyhouse/uploads/2018/03/funny-bg.jpg");
            background-size: 100% 100%;
            background-attachment: fixed;
            background-repeat: no-repeat;
            backdrop-filter: brightness(50%) blur(1px);
            color: floralwhite;
            text-align: center;
            margin: 0 0 0 0;
            padding-top: 10%;
        }

        a {
            color: floralwhite;
            text-decoration: none;
        }

        span {
            display: inline-block;
            overflow: auto;
            width: 20%;
            height: auto;
            min-width: 275px;
            transition-property: width;
            transition-duration: 1s;
            transition-timing-function: ease-in-out;

        }

        span:hover {
            width: 30%;
        }
    </style>
</head>
<body>
<h1>Welcome</h1>

<a href="/picture" target="_blank">
    <span>
        <img src="https://media0.giphy.com/media/StKiS6x698JAl9d6cx/200w.gif?cid=6c09b952bpkx6gac0d5uhuzcm9bp0bsvw6btsjnc7ptvqe7s&rid=200w.gif&ct=g"
             height="250px" width="250px" alt="Here should have been a cool gif">
        <p>Click to see random picture</p>
    </span>
</a>

<a href="/activity" target="_blank">
    <span>
        <img src="https://i.gifer.com/origin/b8/b842107e63c67d5674d17e0f576274fa.gif"
             height="250px" width="250px" alt="Here should have been a cool gif">
        <p>Click to see activity table</p>
    </span>
</a>

<a href="/add-activity.jsp" target="_blank">
    <span>
        <img src="https://thumbs.gfycat.com/BeneficialCleanIchidna-size_restricted.gif"
             height="250px" width="250px" alt="Here should have been a cool gif">
        <p>Click to add activity</p>
    </span>
</a>
</body>
</html>
