<%-- 
    Document   : login
    Created on : Jan 2, 2022, 10:40:46 AM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Login">
    <form class="form-signin" method="POST" action="j_security_check">
        <h1 class="h3 mb-3 font-weight-normal"> Sign in </h1>
        <label for="username" class="sr-only"> Username </label>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
        <label for="password" class="sr-only"> Password </label>
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required />
        <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg" type="submit"> Sign in </button>
    </form>
</t:pageTemplate>