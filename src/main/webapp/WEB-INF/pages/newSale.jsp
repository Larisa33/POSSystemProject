<%-- 
    Document   : newSale
    Created on : Jan 16, 2022, 2:32:10 PM
    Author     : Larisa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="New Sale">  
    <br> <br>
    <hr class="my-4">
    <form method="POST" action="${pageContext.request.contextPath}/NewSale">
        <button class="w-100 btn btn-primary btn-lg"  type="submit"> Vanzare noua</button>
    </form>
    <hr class="my-4">
</t:pageTemplate>