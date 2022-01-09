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
     <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Manager>
        <div class="row">
            <div class="col-md-6 mb-3">
                  
            <div class="col-md-3">Nume produs :
                ${product.product_name}
            </div>
            <div class="col-md-3">Pret : 
                ${product.price} lei
            </div>
            </div>
        </div>

<!--        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="Motiv"> Motiv </label>
                <input type="text" class="form-control" id="reason" name="reason" placeholder="Ex: produs defect" value="${product.product_name}" required>
                <div class="invalid-feedback">
                    Acest camp este obligatoriu!
                </div>
            </div>
        </div>-->
        <div class="row">

        </div>
        <hr class="my-4">
          <a class="w-100 btn btn-primary btn-lg"  href="${pageContext.request.contextPath}/Client" role="button">Check another item</a>
    </form>
      
        <div class="row">
         
         
        </div>    
          
      
</t:pageTemplate>
