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
   <form method="POST" action="${pageContext.request.contextPath}/Client">
        <br> <br>
        <input type="text" class="form-control" id="id_product" name="id_product" placeholder="ex: 1234">
        <hr class="my-4">

<!--       <a class="w-100 btn btn-primary btn-lg" href="${pageContext.request.contextPath}/DisplayProducts?id=${id_product}" role="button">Find</a>-->
         <button class="btn btn-primary btn-lg btn-block" type="submit">Check</button>
    </form>
</t:pageTemplate>