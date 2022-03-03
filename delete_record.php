<?php
require_once('database.php');

// Get IDs
$record_id = filter_input(INPUT_POST, 'record_id', FILTER_VALIDATE_INT);
$category_id = filter_input(INPUT_POST, 'category_id', FILTER_VALIDATE_INT);
$name = filter_input(INPUT_POST, 'name');
$price = filter_input(INPUT_POST, 'price', FILTER_VALIDATE_FLOAT);
$details = filter_input(INPUT_POST, 'details');
$ingredients = filter_input(INPUT_POST, 'ingredients');

// Delete the product from the database
if ($record_id != false && $category_id != false) {
    $query = "DELETE FROM records
              WHERE recordID = :record_id";
    $statement = $db->prepare($query);
    $statement->bindValue(':record_id', $record_id);
    $statement->execute();
    $statement->closeCursor();
}

// display the Product List page
include('index.php');
?>