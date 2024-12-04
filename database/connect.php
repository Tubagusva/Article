<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "artikel";

// Membuat koneksi
$conn = new mysqli($hostname, $username, $password, $database);

// Cek koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
