<%-- 
    Document   : pageTemplate
    Created on : Dec 30, 2021, 12:35:12 PM
    Author     : Larisa
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="pageTitle"%>

<!--Aici este templateul aplicatiei. Acest .tag contine toate elementele care se 
repeta pe mai multe pagini in aplicatie.
Este necesar acest tag pentru a evita cod repetitiv, dar si pentru a ne fi mai 
usor atunci cand vrem sa facem o modificare de aspect vizibila pe toate paginile.-->

<!DOCTYPE html>
<html>
    <head>
        <title>${pageTitle}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>

        <jsp:include page="/WEB-INF/pages/menu.jsp" />
        <main role="main" class="container">
            <jsp:doBody />
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>