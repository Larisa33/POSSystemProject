<%-- 
    Document   : stocks
    Created on : Dec 5, 2021, 10:47:55 AM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Manage Stocks">
        <h1>Manage stocks</h1>
            <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Stocks">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="barcode" class="form-label">Barcode </label>
                <input type="text" class="form-control" id="barcode" name="barcode"placeholder="Barcode" value="${car.barcode}" required="">
                <div class="invalid-feedback">
                    Barcode is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot" class="form-label">Product name</label>
                <input type="text" class="form-control" id="product_name" name="product_name" placeholder="Product name" value="${car.product_name}" required="">
                <div class="invalid-feedback">
                    Product name is required.
                </div>
            </div>
        </div>
                
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot" class="form-label">Description</label>
                <input type="text" class="form-control" id="description" name="Description" placeholder="description" value="${car.description}" required="">
                <div class="invalid-feedback">
                    Description name is required.
                </div>
            </div>
        </div>
                
        <div class="row">
        <div class="col-md-6 mb-3">
            <label for="parking_spot" class="form-label">Price</label>
            <input type="text" class="form-control" id="price" name="price" placeholder="Price" value="${car.price}" required="">
            <div class="invalid-feedback">
                Price name is required.
            </div>
        </div>
        </div>
            
                <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot" class="form-label">Stock</label>
                <input type="text" class="form-control" id="stock" name="stock" placeholder="Stock " value="${car.stock}" required="">
                <div class="invalid-feedback">
                    Stock name is required.
                </div>
            </div>
        </div>
                

        <input type="hidden" name="car_id" value="${car.id}"/>
        <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>

    </form>
        
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                    .forEach(function (form) {
                        form.addEventListener('submit', function (event) {
                            if (!form.checkValidity()) {
                                event.preventDefault()
                                event.stopPropagation()
                            }

                            form.classList.add('was-validated')
                        }, false)
                    })
        })()
    </script>
        
</t:pageTemplate>
