<?php
session_start();
//connect to database
$mysqli = mysqli_connect('localhost', 'root', '', "STOREDB");


include "functions.php";

createRows();

?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">

    <div class="col-sm-6">
        <h1 class="text-center">CHECKOUT</h1>
</div>
</div>



<div class="container">

    <div class="col-sm-6">
        <h1 class="text-center">Billing Info</h1>
        <form action="checkoutform.php" method="post">

                <div class="form-group">
                <label for="username">Please enter your username</label>
                <input type="text" name="username" class="form-control">
                </div>


                <div class="form-group">
                <label for="streetaddress">Please enter the street address of your contact</label>
                <input type="text" name="streetaddress" class="form-control">
                </div>

                <div class="form-group">
                <label for="city">Please enter the city for your contact</label>
                <input type="text" name="city" class="form-control">
                </div>

   -            <div class="form-group">
                <label for="state">Please enter the state for your contact</label>
                <input type="text" name="state" class="form-control">
                </div>

                <div class="form-group">
                <label for="zip">Please enter the zip code for your contact</label>
                <input type="text" name="zip" class="form-control">
                </div>


            <input class="btn btn-primary center-block" type="submit" name="submit" value="CREATE">


        </form>


    </div>

</div>
</body>
</html>


