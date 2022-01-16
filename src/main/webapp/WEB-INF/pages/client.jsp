<%-- 
    Document   : client
    Created on : Jan 3, 2022, 9:08:12 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Clients Page">  
    <br> <br>
    <h3> Introdu codul de bare al produsului pe care vrei sa-l cauti </h3>
    <hr class="my-4">
    <form method="POST" action="${pageContext.request.contextPath}/Client">
        <input type="text" class="form-control" id="id_product" name="id_product" placeholder="ex: 1234">
        <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg"  type="submit">Check</button>
    </form>
</t:pageTemplate>