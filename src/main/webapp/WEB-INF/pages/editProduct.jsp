<%-- 
    Document   : editProduct
    Created on : Jan 8, 2022, 9:38:15 AM
    Author     : Denisa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>

<t:pageTemplate pageTitle="Products">
    <h1>Manage stocks</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditProduct">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="barcode" class="form-label">Barcode </label>
                <input type="text" class="form-control" id="barcode" name="barcode" placeholder="Barcode" value="${product.barcode}" required="">
                <div class="invalid-feedback">
                    Barcode is required.
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="Product_name" class="form-label">Product name</label>
                <input type="text" class="form-control" id="product_name" name="product_name" placeholder="Product name" value="${product.product_name}" required="">
                <div class="invalid-feedback">
                    Product name is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="Price" class="form-label">Price</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="Price" value="${product.price}" required="">
                <div class="invalid-feedback">
                    Price name is required.
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="Stock" class="form-label">Stock</label>
                <input type="text" class="form-control" id="stock" name="stock" placeholder="Stock " value="${product.stock}" required="">
                <div class="invalid-feedback">
                    Stock name is required.
                </div>
            </div>
        </div>


        <input type="hidden" name="product_id" value="${product.id}"/>
        <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>

    </form>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';

            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');

                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>




</t:pageTemplate>