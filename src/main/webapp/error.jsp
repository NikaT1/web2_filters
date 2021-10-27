<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/valid.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/jQuery.js"></script>
    <style>
        body {
            color: #6d747f;
            font-size: 26px;
            font-family: "Open Sans", cursive;
            background-color: #FFEBCD;
        }

        .div_class {
            width: 80%;
            height: 80%;
            margin: auto;
            display: grid;
        }

        #imagine {
            alignment: center;
            width: 100%;
            height: 100%;
        }

        .background-with-shadow {
            background-image: url("images/picture1.jpg");
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            box-shadow: 0 0 8px 8px #f1d2ff inset;
        }

        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            box-shadow: inset 0 0 6px rgba(206, 91, 238, 0.49);
        }

        ::-webkit-scrollbar-thumb {
            box-shadow: inset 0 0 6px rgba(206, 91, 238, 0.49);
        }

    </style>
    <title>Error</title>
    <meta charset="utf-8"/>
</head>
<body>
<div class="div_class">
    <img id="imagine" class="background-with-shadow" src="images/pic1.png" alt="Милый хомячок">
</div>
</body>
</html>
