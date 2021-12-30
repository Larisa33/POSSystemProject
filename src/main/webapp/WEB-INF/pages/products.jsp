
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <c:forEach var="product" items="${products}" varStatus="status">
        <h1>Test</h1>
        <div class="row">

            <div class="col-md-3">
                ${product.product_name}
            </div>
            <div class="col-md-3">
                ${product.price}
            </div>
            <div class="col-md-3">
                ${product.price}
            </div>
        </div>
    </c:forEach>
</body>
</html>