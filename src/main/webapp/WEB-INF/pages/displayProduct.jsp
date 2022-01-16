<%-- 
    Document   : displayProduct
    Created on : Jan 4, 2022, 7:43:57 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<t:pageTemplate pageTitle="Clients Page">  
    <br> <br>
    <h3> Detaliile produsului cautat </h3>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Manager">
        <hr class="my-4">
        <div class="row">
            <div class="col-md-5">
                <h5>  Nume produs  </h5> ${product.product_name}
            </div>
            <div class="col-md-5">
                <h5>   Pret </h5> ${product.price} lei
            </div>
        </div>
        <hr class="my-4">
        <a class="w-100 btn btn-primary btn-lg"  href="${pageContext.request.contextPath}/Client" role="button">Check another item</a>
    </form>
</t:pageTemplate>
