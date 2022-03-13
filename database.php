<?php
    $dsn = 'mysql:host=localhost;dbname=D00234895';
    $username = 'D00234895';
    $password = 'afD9J6uw';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>