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
    <div class="cashier-screen">
        <div class="client">
            <div class="produse-bon">
                <div class="prod-info nr" > <h3 class="detalii-mic-bon"> Nr. </h3> </div>
                <div class="prod-info nume" > <h3 class="detalii"> Nume Produs </h3> 
                    <c:forEach var="name" items="${sale}" varStatus="status">
                        <p> ${name} </p>
                    </c:forEach>
                </div>
                <div class="prod-info pret"> <h3 class="detalii-mic-bon"> Pret </h3> 
                    <c:forEach var="price" items="${sale_price}" varStatus="status">
                        <p> ${price}lei </p>
                    </c:forEach>
                </div>
            </div>
            <div class="total-bon"> 
                <h4 class="pret-total-bon"> Total: </h4>
            </div>
        </div>

        <!-- CASIER -->
        <div class="casier">
            <!-- ecran unde apar produsele introduse -->
            <div class="afisare-produse">
                <div class="prod-info  nr" > <h3 class="detalii-mic"> Nr. </h3> 
            </div> 
            <div class="prod-info nume" > <h3 class="detalii"> Nume Produs </h3>
                <c:forEach var="name" items="${sale}" varStatus="status">
                    <p> ${name} </p>
                </c:forEach>

            </div>
            <div class="prod-info pret"> <h3 class="detalii-mic"> Pret </h3> 
                <c:forEach var="price" items="${sale_price}" varStatus="status">
                    <p> ${price}lei </p>
                </c:forEach>
            </div>
        </div>

        <!-- ecran unde apare codul tastat/introdus -->
        <form method="POST" action="">
            <div class="afisare-cod">
                <div class="produse">

                    <!--"Products" este incarcat cu datele primite de la servlet prin
                        metodta doGet.
                        Cu ajutorul la forEach am afisat fiecare item din products in parte
                        si am numit fiecare item "product".-->
                    <c:forEach var="product" items="${products}" varStatus="status">
                        <div class="row">
                            <div class="col-md-2">
                                <input type="checkbox"  name="product_id" value="${product.id}">
                            </div>
                            <div class="col-md-2">
                                ${product.barcode}
                            </div>
                            <div class="col-md-2">
                                ${product.price}lei
                            </div>
                            <div class="col-md-2">
                                ${product.product_name}
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div >
                    <button class="button-subit" type="submit"> Add Product</button>
                </div>
            </div>
        </form>

        <!-- button plata card -->
        <form method="POST" action="${pageContext.request.contextPath}/Plata">
            <div class="plata">
                <button class="button-plata card"> PLATA </button>
            </div>
        </form>
        <div class="total">
            <h2 class="pret-total"> Total: </h2>
        </div>
    </div> 
</div>
</t:cashierTemplate>
