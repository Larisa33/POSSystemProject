
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>

<t:pageTemplate pageTitle="Products">
    <h1>Manage stocks</h1>
    <form method="POST" action="${pageContext.request.contextPath}/Administrator/Products">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Administrator/Products/Stocks" role="button">Add new product &raquo;</a>
        <button class="btn btn-danger" type="submit">Delete Product</button>
        <hr class="my-4">
        <div class="row">
             <div class="col-md-2">
                <h6>Select to delete</h6>
            </div>
            <div class="col-md-2">
                <h6>BARCODE</h6>
            </div>
            <div class="col-md-2">
                <h6>NAME</h6>
            </div>
            <div class="col-md-2">
                <h6>PRICE</h6>
            </div>
            <div class="col-md-2">
                <h6>STOCK</h6>
            </div>
        </div>
        <hr class="my-2">
        <c:forEach var="product" items="${products}" varStatus="status">
            <div class="row">
                <div class="col-md-2">
                    <input type="checkbox" name="product_ids" value="${product.id}"/>
                </div>
                <div class="col-md-2">
                    ${product.barcode}
                </div>
                <div class="col-md-2">
                    ${product.product_name}
                </div>
                <div class="col-md-2">
                    ${product.price}
                </div>
                <div class="col-md-2">
                    ${product.stock}
                </div>
                <div class="col-md-2">
                    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/Administrator/Products/EditProduct?id=${product.id}" role="button">Edit Product</a>
                </div>
            </div>
        </c:forEach>
    </form>
</t:pageTemplate>