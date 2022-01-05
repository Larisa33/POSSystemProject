<%-- 
    Document   : returns
    Created on : Jan 2, 2022, 4:57:30 PM
    Author     : DANIELA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>

<t:pageTemplate pageTitle="Products">
    <h1>Returned Items</h1>
    <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Returns/HandleReturns" role="button">Return new item &raquo;</a>
    <hr class="my-4">
    <div class="row">
        <div class="col-md-3">
            <h6>BARCODE</h6>
        </div>
        <div class="col-md-3">
            <h6>REASON</h6>
        </div>
        <div class="col-md-3">
            <h6>DATE</h6>
        </div>
    </div>
    <hr class="my-2">
    <c:forEach var="return" items="${returns}" varStatus="status">
        <div class="row">
            <div class="col-md-3">
                ${return.barcode}
            </div>
            <div class="col-md-3">
                ${return.reason}
            </div>
            <div class="col-md-3">
                ${return.date}
            </div>
        </div>
    </c:forEach>
</t:pageTemplate>