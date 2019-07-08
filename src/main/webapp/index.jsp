<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sell Your Product</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="index%20.css">
    </head>
    <body>
        <div id="wrapper">
            <h1>Hello Visitor!</h1>
            <h3>Buy all you want!</h3>
            <div id="container">
                <div id="selector">
                    <p>All Products</p>
                    <form action="addProduct" method="POST">
                        <select name="list">
                            <option value="Car">Car</option>
                            <option value="House">House</option>
                            <option value="Vacation">Vacation</option>
                            <option value="Coupon Codes">Coupon Codes</option>
                            <option value="Pet">Pet</option>
                            <option value="Lone time in a room with internet">Lone time in a room with internet</option>
                        </select><br>
                        <button id="submit">Purchase</button>
                    </form>    
                </div>
                <div id="items">
                    <p>Your Selected Products</p>
                    <ul>
                        <c:forEach items="${products}" var="product">
                            <li><c:out value="${product}"/></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>   
        </div>     
    </body>
</html>