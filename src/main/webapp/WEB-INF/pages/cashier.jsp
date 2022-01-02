<%-- 
    Document   : screen
    Created on : Dec 3, 2021, 8:28:38 PM
    Author     : Larisa
--%>

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
        display: inline;
    }

    .detalii-mic {
        float:left;
        width: 90px;
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
        height: 100px;
        width:400px;
        margin:20px;
        margin-bottom:150px;
        float:right;
    }

    .input-cod {
        height: 100px;
        width:400px;
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
        width: 55px;
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
            width: 70px;
            margin:5px;
        }

        .detalii {
            width: 190px;
            margin:5px;
        }

        .afisare-cod {
            height: 90px;
            width:240px;
            margin-right:40px;
            margin-bottom:90px;
        }

        .input-cod {
            height: 90px;
            width:240px;
        }

        .plata {
            width: 240px;
            height: 50px;
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
            width: 45px;
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
            width: 50px;
        }

        .detalii {
            width: 180px;
        }

        .afisare-cod {
            height: 80px;
            width:210px;
            margin-right:40px;
            margin-bottom:80px;
        }

        .input-cod {
            height: 80px;
            width:210px;
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
            width: 35px;
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
</style>
<t:cashierTemplate pageTitle="Cashier">
        <!-- CLIENT -->
        <div class="cashier-screen">
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
        </div>
</t:cashierTemplate>
