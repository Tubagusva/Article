<?php
 


function createReport($data)
{
    global $conn; // Gunakan koneksi global

    // Escape string untuk mencegah SQL Injection
    $title = mysqli_real_escape_string($conn, $data['title']);
    $description = mysqli_real_escape_string($conn, $data['description']);

    // Query INSERT
    $query = "INSERT INTO artikels (title, description) 
                VALUES ('$title', '$description')";

    // Eksekusi query
    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "<script>
            alert('Successfully create new article');
            window.location.replace('../index.php');
        </script>";
    } else {
        echo "Error: " . mysqli_error($conn); // Display or log the error
    }
}

function updateReport($data)
{
    global $conn;

    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $id = $data['id'];
    

    $query = "UPDATE artikels SET title='$title', description='$description' WHERE id=$id";
    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "<script>
            alert('Your article has been successfully updated');
            window.location.replace('../index.php');
        </script>";
    } else {
        echo "Error: " . mysqli_error($conn); // Display or log the error
    }
}

?>