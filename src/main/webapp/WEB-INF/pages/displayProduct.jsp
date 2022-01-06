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
    <div class="">
        <br> <br>
        <div class="col-md-3"> Product barcode:  </div>
        <br>
        <div class="col-md-3"> Product name:  </div>
        <br>
        <div class="col-md-3"> Product price:  </div>
        <hr class="my-4">
       <%= request.getAttribute("product")%>
       ${product.barcode}
        
        <a class="w-100 btn btn-primary btn-lg"  href="${pageContext.request.contextPath}/Client" role="button">Check another item</a>
    </div>
</t:pageTemplate>  
