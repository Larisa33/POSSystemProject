<%-- 
    Document   : handlereturns
    Created on : Dec 29, 2021, 1:25:15 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   
    </head>
    

    <body>
    <h1>Handle Returns</h1>
    <form class="needs-validation" novalidate method="POST" action="">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="cod"> Cod de bare </label>
                <input type="text" class="form-control" id="ceva" placeholder="Ex:123456" value="" required>
                <div class="invalid-feedback">
                      Acest camp este obligatoriu!
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="Motiv"> Motiv </label>
                <input type="text" class="form-control" id="parking_spot" placeholder="Ex: produs defect" value="" required>
                <div class="invalid-feedback">
                    Acest camp este obligatoriu!
                </div>
            </div>
        </div>
        <div class="row">

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
    </body>
</html>

