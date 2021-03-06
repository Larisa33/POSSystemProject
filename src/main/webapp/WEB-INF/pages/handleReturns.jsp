<%-- 
    Document   : handlereturns
    Created on : Dec 29, 2021, 1:25:15 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Handle Returns">
    <h1>Handle Returns</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/Returns/HandleReturns">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="barcode"> Cod de bare </label>
                <input type="text" class="form-control" id="barcode" name="barcode" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Acest camp este obligatoriu!
                </div>
            </div>
        </div>
<!--        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="stock"> Cantitate </label>
                <input type="text" class="form-control" id="stock" name="stock" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Acest camp este obligatoriu!
                </div>
            </div>
        </div> -->
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="reason"> Motiv </label>
                <input type="text" class="form-control" id="reason" name="reason" placeholder="ex: produs defect" value="" required>
                <div class="invalid-feedback">
                    Acest camp este obligatoriu!
                </div>
            </div>
        </div> 
        <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>
    </form>


    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="form-validation.js"></script>
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

