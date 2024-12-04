<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Include the database connection file
include(__DIR__ . "/../database/connect.php");

if (isset($_POST["id"]) && !empty($_POST["id"])) {
    $id = $_POST["id"];

    // Sanitize the id to prevent SQL injection
    $id = mysqli_real_escape_string($conn, $id);

    // Prepare the delete query
    $query = "DELETE FROM artikels WHERE id = '$id'";  // Using '$id' properly in SQL

    // Execute the query
    $result = mysqli_query($conn, $query);

    // Check the result of the query
    if ($result) {
        echo "<script>
            alert('Data has been deleted');
            window.location.replace('../index.php');
        </script>";
    } else {
        echo "<script>
            alert('Sorry, data failed to be deleted');
            window.location.replace('../index.php');
        </script>";
    }
} else {
    echo "<script>
        alert('No article ID specified');
        window.location.replace('../index.php');
    </script>";
}
?>
