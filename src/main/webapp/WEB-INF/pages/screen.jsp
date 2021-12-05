<%-- 
    Document   : screen
    Created on : Dec 3, 2021, 8:28:38 PM
    Author     : Larisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   <!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="screen">
            
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
            <div class="plata-card">
                <button class="button-card"> PLATA CARD </button>
            </div>
            
            <!--button plata cash -->
            <div class="plata-cash">
                <button class="button-cash"> PLATA CASH </button>
            </div>
            
            <div class="total">
                <h2 class="pret-total"> Total: </h2>
            </div>
            
        </div>
        </div>    
        <a class="w-100 btn btn-lg btn-primary"  href="${pageContext.request.contextPath}/Administrator" role="button">Administrator</a>
        <a class="w-100 btn btn-lg btn-primary"  href="${pageContext.request.contextPath}" role="button">Go back to main page</a>
    </body>
</html>

<style scoped>
    
    .screen {
        margin:30px;
        margin-top:50px;
    }
    .casier{
        width: 1000px;
        height: 730px;
        border: 3px solid black;
        margin-left: 200px;
        background-color: activecaption;
    }
    
    .client {
        width: 400px;
        height: 730px;
        border:3px solid black;
        float:right;
        margin-right:200px;
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
    
    .plata-card  {
        width: 400px;
        height: 50px;
        margin:20px;
        float:right;
    }
    
    .button-card {
        width: 400px;
        height: 50px;
    }
    
     .plata-cash  {
        width: 400px;
        height: 50px;
        margin:20px;
        float:right;
    }
    
    .button-cash {
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
    
    .prod-info {
        display: inline;
    }
    
    .detalii {
        float:left;
        width: 190px;
        margin:5px;
        text-align:center;
        border-bottom: 1px solid black;
    }
    .detalii-mic {
        float:left;
        width: 90px;
        margin:5px;
        text-align:center;
        border-bottom: 1px solid black;
    }
    
    .detalii-mic-bon {
        float:left;
        width: 55px;
        margin:5px;
        text-align:center;
        border-bottom: 1px solid black;
    }
    
    .produse-bon {
        height: 650px;
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
</style>

