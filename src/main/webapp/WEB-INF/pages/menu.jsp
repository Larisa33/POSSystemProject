<%-- 
    Document   : menu
    Created on : Dec 30, 2021, 5:34:03 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                margin: 0;
            }

            ul.topnav {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            ul.topnav li {
                float: left;
            }

            ul.topnav li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            ul.topnav li a:hover:not(.active) {
                background-color: #111;
            }

            ul.topnav li a.active {
                background-color: #04AA6D;
            }

            ul.topnav li.right {
                float: right;
            }

            @media screen and (max-width: 600px) {
                ul.topnav li.right,
                ul.topnav li {
                    float: none;
                }
            }
        </style>  
    </head>
    <body> 
        <ul class="topnav">
            <li><a class="active" href="${pageContext.request.contextPath}">POSSystem</a></li>
            <li><a href="${pageContext.request.contextPath}/Administrator">Administrator</a></li>
            <li><a href="${pageContext.request.contextPath}/Manager">Manager</a></li>
            <li><a href="${pageContext.request.contextPath}/Cashier">Cashier</a></li>
            <li class="right"><a href="#about">Login</a></li>
        </ul>
    </body>
</html>



