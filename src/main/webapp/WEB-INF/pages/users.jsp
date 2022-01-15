<%-- 
    Document   : users
    Created on : Jan 15, 2022, 6:10:24 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>

<t:pageTemplate pageTitle="Users">
    <h1>Manage Users</h1>
    <form method="POST" action="${pageContext.request.contextPath}/Administrator/Users">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Administrator/Users/AddUser" role="button">Add new user &raquo;</a>
        <button class="btn btn-danger" type="submit">Delete User</button>
        <hr class="my-4">
        <div class="row">
            <div class="col-md-2">
                <h6>Select to delete</h6>
            </div>
            <div class="col-md-2">
                <h6>USERNAME</h6>
            </div>
            <div class="col-md-2">
                <h6>EMAIL</h6>
            </div>
            <div class="col-md-2">
                <h6>POSITION</h6>
            </div>
        </div>
        <hr class="my-2">

        <c:forEach var="user" items="${users}" varStatus="status">
            <div class="row">
                <div class="col-md-2">
                    <input type="checkbox" name="user_ids" value="${user.id}"/>
                </div>
                <div class="col-md-2">
                    ${user.username}
                </div>
                <div class="col-md-2">
                    ${user.email}
                </div>
                <div class="col-md-2">
                    ${user.position}
                </div>
            </div>
        </c:forEach>
    </form>
</t:pageTemplate>
