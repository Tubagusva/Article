<?php 
include("database/connect.php");

// HARUS DITAMBAG KETIKA MENGGUNAKAN SESSION
session_start();

if (!isset($_SESSION['login'])) {
    header('location: ../index.php');
    exit;
}

$result = mysqli_query($conn, "SELECT * FROM artikels");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TheArticleNook</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="home.php">TheArticleNook</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./views/create.php">Make Artikel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./auth/logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Content -->
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1 class="fw-bold text-primary">Latest Article</h1>
            <p class="text-muted">Read the latest articles on various rental tools for your needs.</p>
        </div>

        <div class="row">
            <?php while ($row = mysqli_fetch_assoc($result)) : ?>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <!-- Menampilkan judul dari database -->
                            <h5 class="card-title"><?php echo htmlspecialchars($row['title']); ?></h5>
                            
                            <!-- Menampilkan deskripsi -->
                            <p class="card-text text-muted">
                                <?php echo htmlspecialchars(substr($row['description'], 0, 100)); ?>...
                            </p>
                            
                            <!-- Menambahkan tombol dengan link ke halaman detail -->
                            <a href="artikel.php?id=<?= $row['id'] ?>" class="btn btn-primary">Read More</a>
                            <?php
    
                            ?>
                        </div>
                    </div>
                </div>
                <?php endwhile; ?>
        </div>
        
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
