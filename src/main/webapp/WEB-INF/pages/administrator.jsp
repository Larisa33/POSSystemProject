<%-- 
    Document   : administrator
    Created on : Dec 4, 2021, 4:36:26 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!doctype html>
<html lang="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


        <style scoped>
            html,
            body {
                height: 100%;
            }

            body {
                display: flex;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
            }

            .form-signin {
                width: 100%;
                max-width: 330px;
                padding: 15px;
                margin: auto;
            }

            .form-signin .checkbox {
                font-weight: 400;
            }

            .form-signin .form-floating:focus-within {
                z-index: 2;
            }

            .btn-spaceing {
                margin-bottom: 15px;
            }

        </style>
    </head>

    <body class="text-center">

        <main class="form-signin">
            <form>
                <h1 class="h3 mb-3 fw-normal">Buna ziua!</h1>
                <a class="w-100 btn btn-lg btn-primary btn-spaceing"  href="${pageContext.request.contextPath}/Administrator/Products" role="button">Manage Stocks</a>
                <a class="w-100 btn btn-lg btn-primary btn-spaceing"  href="${pageContext.request.contextPath}/Administrator/Users" role="button">Manage Users</a>
                <a class="w-100 btn btn-lg btn-primary btn-spaceing"  href="${pageContext.request.contextPath}/Sales" role="button">See all sales</a>
                <a class="w-100 btn btn-lg btn-primary btn-spaceing"  href="${pageContext.request.contextPath}/Logout">Go back to main page</a>
            </form>
        </main>
    </body>
</html>