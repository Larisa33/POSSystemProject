<%-- 
    Document   : screen
    Created on : Dec 3, 2021, 8:28:38 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:cashierTemplate pageTitle="Cashier">
        <!-- CLIENT -->
        <div class="client">
            
            <div class="produse-bon">
                <div class="prod-info" > <h3 class="detalii-mic-bon"> Nr. </h3> </div>
                <div class="prod-info" > <h3 class="detalii-mic-bon"> Cant </h3></div>
                <div class="prod-info" > <h3 class="detalii"> Nume Produs </h3> </div>
                <div class="prod-info"> <h3 class="detalii-mic-bon"> Pret </h3> </div>
            </div>

            <div class="total-bon"> 
                <h4 class="pret-total-bon"> Total: </h4>
            </div>
        </div>

        <!-- CASIER -->
        <div class="casier">
            <!-- ecran unde apar produsele introduse -->
            <div class="afisare-produse">
                <div class="prod-info" > <h3 class="detalii-mic"> Nr. </h3> </div>
                <div class="prod-info" > <h3 class="detalii-mic"> Cantitate </h3></div>
                <div class="prod-info" > <h3 class="detalii"> Nume Produs </h3> </div>
                <div class="prod-info"> <h3 class="detalii-mic"> Pret </h3> </div>
            </div>

            <!-- ecran unde apare codul tastat/introdus -->
            <div class="afisare-cod">
                <input type="text" class="input-cod" />
            </div>

            <!-- button plata card -->
            <div class="plata">
                <button class="button-plata"> PLATA CARD </button>
            </div>

            <!--button plata cash -->
            <div class="plata">
                <button class="button-plata"> PLATA CASH </button>
            </div>

            <div class="total">
                <h2 class="pret-total"> Total: </h2>
            </div>

        </div>    
        <a class="w-100 btn btn-lg btn-primary"  href="${pageContext.request.contextPath}/Administrator" role="button">Administrator</a>
        <a class="w-100 btn btn-lg btn-primary"  href="${pageContext.request.contextPath}" role="button">Go back to main page</a>
</t:cashierTemplate>
