<?php


include "db.php";

function createRows() {

if(isset($_POST['submit'])) {

global $connection;

$order_name = $_POST['username'];
$order_address = $_POST['streetaddress'];
$order_city = $_POST['city'];
$order_state = $_POST['state'];
$order_zip = $_POST['zip'];


$connection = mysqli_connect('localhost', 'root', '', 'STOREDB');

    if(!$connection) {

    die("Database connection failed");

    }

$query = "INSERT INTO store_orders(order_name,order_address,order_city,order_state,order_zip) " ;
$query .= "VALUES ('$order_name', '$order_address', '$order_city', '$order_state', '$order_zip')";


$result = mysqli_query($connection, $query);

if(!$result) {

        die('query FAILED' .mysqli_error());

} else {

	header("Location: seestore.php");
	exit();

}
}
}

?>
