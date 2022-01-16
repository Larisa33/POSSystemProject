<%-- 
    Document   : sales
    Created on : Jan 16, 2022, 12:36:40 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>

<t:pageTemplate pageTitle="Products">
    <h1>All sales</h1>
    <form method="POST" action="${pageContext.request.contextPath}/Administrator/Products">
        <hr class="my-4">
        <div class="row">
            <div class="col-md-4">
                <h6>Bon ID</h6>
            </div>
            <div class="col-md-4">
                <h6>Barcode</h6>
            </div>
            <div class="col-md-4">
                <h6>Product name</h6>
            </div>
        </div>
        <hr class="my-2">
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">

            </div>
        </div>
    </form>
</t:pageTemplate>