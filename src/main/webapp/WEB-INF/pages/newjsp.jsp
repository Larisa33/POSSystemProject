<%-- 
    Document   : screen
    Created on : Dec 3, 2021, 8:28:38 PM
    Author     : Larisa
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    body {
        margin:100px;
        margin-top:100px;
    }
    .cashier-screen {
        margin-top: 50px;
    }

    /*CASIER*/
    .casier{
        width: 1000px;
        height: 730px;
        border: 3px solid black;
        margin-left: 200px;
        background-color: activecaption;
    }

    .afisare-produse {
        border: 2px solid black;
        height: 500px;
        width: 500px;
        margin:20px;
        margin-bottom: 50px;
        float:left;
        background-color: white;
    }

    .prod-info {
        float:left;
    }

    .detalii-mic {
        float:left;
        width: 130px;
        margin:5px;
        text-align:center;
        border-bottom: 1px solid black;
    }

    .detalii {
        float:left;
        width: 190px;
        margin:5px;
        text-align:center;
        border-bottom: 1px solid black;
    }

    .afisare-cod {
        height: 500px;
        width:400px;
        margin:20px;
        float:right;
        border: 2px solid black;
        background-color: white;
    }
    .produse {
        height: 450px;
    }
    .button-subit {
        width: 400px;
        height: 50px;
    }

    .plata {
        width: 400px;
        height: 50px;
        margin:20px;
        float:right;
    }

    .button-plata {
        width: 400px;
        height: 50px;
    }

    .total {
        border: 2px solid black;
        clear: left;
        width: 260px;
        height:80px;
        margin-left:130px;
        background-color: white;
    }

    .pret-total {
        margin-top:25px;
        margin-left:20px;
        background-color: white;
    }

    /*CLIENT*/
    .client {
        width: 400px;
        height: 730px;
        border:3px solid black;
        float:right;
        margin-right:200px;
        background-color: white;
    }

    .detalii-mic-bon {
        float:left;
        width: 80px;
        margin:5px;
        text-align:center;
        border-bottom: 1px solid black;
    }

    .total-bon {
        height: 50px;
        border: 1px solid black;
        margin:20px;
    }

    .pret-total-bon {
        margin: 0px;
        margin-top: 17px;
        margin-left: 50px;
    }

    .produse-bon {
        height: 650px;
    }


    /*MEDIA QUERY 1*/
    @media only screen and (max-width: 1870px) {
        body {
            background-color: red;
        }

        /*CASIER*/
        .col-md-2{
            margin-right: 20px;
        }
        .casier{
            width: 800px;
            height: 530px;
            margin-left:150px;
        }

        .afisare-produse {
            height:400px;
            width: 450px;
            margin:20px;
            margin-bottom: 20px;
        }

        .detalii-mic {
            width: 90px;
            margin:5px;
        }

        .detalii {
            width: 190px;
            margin:5px;
        }

        .afisare-cod {
            height: 400px;
            width:240px;
            margin-right:40px;
        }

        .produse {
            height: 360px;
        }
        .button-subit {
            width: 240px;
            height: 40px;
        }

        .plata {
            width: 240px;
            height: 40px;
            margin-right:40px;
        }

        .button-plata {
            width: 240px;
            height: 50px;
        }

        .total {
            width: 250px;
            height:60px;
            margin-left:130px;
        }

        .pret-total {
            margin-top:19px;
            margin-left:20px;
            font-size: 18px;
        }

        /*CLIENT*/
        .client {
            width: 380px;
            height: 530px;
            margin-right:150px;
        }

        .detalii-mic-bon {
            width: 60px;
            margin:5px;
        }

        .total-bon {
            height: 40px;
            margin: 20px;
        }

        .pret-total-bon {
            margin: 0px;
            margin-top: 11px;
            margin-left: 30px;
        }

        .produse-bon {
            height: 450px;
        }
    }

    /*MEDIA QUERY 2*/
    @media only screen and (max-width: 1560px) {
        body {
            background-color: blue;
        }
        .col-md-2{
            margin-right: 10px;
        }

        /*CASHIER*/
        .casier{
            width: 700px;
            height: 530px;
            margin-left:100px;
        }

        .afisare-produse {
            height:400px;
            width: 380px;
            margin:20px;
            margin-bottom: 20px;
        }

        .detalii-mic {
            width: 70px;
        }

        .detalii {
            width: 180px;
        }

        .afisare-cod {
            height: 400px;
            width:  210px;
            margin-right:40px;
        }
        .produse {
            height: 370px;
        }
        .button-subit {
            width: 210px;
            height: 30px;
        }

        .plata {
            width: 210px;
            height: 50px;
            margin-right:40px;
        }

        .button-plata {
            width: 210px;
            height: 50px;
        }

        .total {
            width: 200px;
            height:50px;
            margin-left:110px;
        }

        .pret-total {
            margin-top:15px;
            margin-left:15px;
            font-size: 18px;
        }

        /*CLIENT*/
        .client {
            width: 350px;
            height: 530px;
            margin-right:100px;
        }

        .detalii-mic-bon {
            width: 50px;
            margin:5px;
        }

        .total-bon {
            height: 40px;
            margin: 20px;
        }

        .pret-total-bon {
            margin: 0px;
            margin-top: 11px;
            margin-left: 30px;
        }

        .produse-bon {
            height: 450px;
        }
    }
    .col-md-2{
        display:inline;
        margin-right: 50px;
    }
    .nr {
        height: 100%;
    }
    .nume {
        text-align: center;
        height: 100%;
    }
    .pret {
        text-align: center;
        height: 100%;
    }

</style>

<script>
 
    function addtheproduct(){
       var numar=document.querySelector('#id_product').value;    
       document.querySelector('#afis').innerHTML=numar;
    }
    
    
</script>    
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
             <form method="POST" action="${pageContext.request.contextPath}/NewServlet">
        <br> <br>
        <input type="text" class="form-control" id="id_product" name="id_product" placeholder="ex: 1234">
        <input type="text" class="form-control" id="nr_product" name="nr_product" placeholder="ex:1">
        <hr class="my-4">
         <button class="btn btn-primary btn-lg btn-block" type="submit">Check</button>
    </form>
        </div>

        <!-- CASIER -->

        <div class="casier">
            <!-- ecran unde apar produsele introduse -->
            <c:forEach var="product" items="${bon1}" varStatus="status">
        <div class="row">
           
            <div class="col-md-2">
                ${product.product_name}
            </div>
            <div class="col-md-2">
                ${product.price}
            </div>
        </div>
    </c:forEach>

            <!-- ecran unde apare codul tastat/introdus -->
            <form method="POST" action="">
                <div class="afisare-cod">
                    <div class="produse">
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
       <form method="POST" action="${pageContext.request.contextPath}/NewServlet">
        <br> <br>
        <input type="text" class="form-control" id="id_product" name="id_product" placeholder="ex: 1234">
        <input type="text" class="form-control" id="nr_product" name="nr_product" placeholder="ex:1" value="1">
        <hr class="my-4">
         <button class="btn btn-primary btn-lg btn-block" type="submit">Check</button>
       </form>
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
                <h2 class="pret-total"> Total:${pret} </h2>
            </div>

        </div> 

    </div>
<!--      <form method="POST" action="${pageContext.request.contextPath}/NewServlet">
        <br> <br>
        <input type="text" class="form-control" id="id_product" name="id_product" placeholder="ex: 1234">
        <hr class="my-4">

       <a class="w-100 btn btn-primary btn-lg" href="${pageContext.request.contextPath}/DisplayProducts?id=${id_product}" role="button">Find</a>
         <button class="btn btn-primary btn-lg btn-block" type="submit">Check</button>
    </form>-->
</t:cashierTemplate>
