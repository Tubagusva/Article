<?php
include("../database/connect.php");
include("../controllers/userController.php");


session_start(); // HARUS DITAMBAH KETIKA MENGGUNAKAN SESSION

// REDIRECT USER YANG BELOM LOGIN KE KE LOGIN/REGISTER
if (!isset($_SESSION['login'])) {
    header('location: ../auth/login.php');
    exit;
}

if(isset($_POST['createReport'])) {
    createReport($_POST);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Report - E-Report Website</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../styles/style.css">
</head>

<body>
    <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="home.php">TheArticleNook</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="create.php">Make Artikel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
        
        <div class="container my-auto mt-5">
            <h1 class="mb-2 fw-semibold">create an article</h1>
            <p class="mb-5">Make sure you write a real and relevant article that provides valuable insights or addresses actual issues!</p>
            <form action="" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Enter your title name here!" required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Artikel Description</label>
                    <textarea class="form-control" id="description" name="description" rows="5" placeholder="Enter your artikel here!"></textarea>
                </div>
                <button type="submit" class="btn btn-primary " name="createReport">
                    Submit
                </button>
        </div>
    </div>

    </header>
    <main>

    </main>
</body>

</html>