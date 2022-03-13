<?php

$search = $_POST['search'];

$servername = "localhost";
$username = "D00234895";
$password = "afD9J6uw";
$db = "D00234895";

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error){
	die("Connection failed: ". $conn->connect_error);
}

$sql = "select * from records where name like '%$search%'";

$result = $conn->query($sql);

if ($result->num_rows > 0){
while($row = $result->fetch_assoc() )
{
	echo $row["name"]."<br>" .$row["price"]."<br>" .$row["image"]."<br>" .$row["details"]."<br>" .$row["ingredients"]. "<br>".$row["symptoms"]. "<br>";
}
} else {
	echo "0 records";
}


$conn->close();

?>