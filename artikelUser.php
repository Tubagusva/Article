<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("./database/connect.php");
include("./controllers/userController.php");

// HARUS DITAMBAG KETIKA MENGGUNAKAN SESSION
session_start();

// REDIRECT USER YANG BELUM LOGIN KE LOGIN.php
if (!isset($_SESSION['login'])) {
    header('location: auth/login.php');
    exit;
}

$query = mysqli_query ($conn, "SELECT * FROM artikels");
$article = mysqli_fetch_assoc($query);
if (isset($_GET['id'])) {
    $article_id = $_GET['id'];

    // Ambil detail laporan berdasarkan $reportId
    // Misalnya menggunakan query SQL:
    $query = mysqli_query ($conn, "SELECT * FROM artikels WHERE id = '$article_id'");
    $article = mysqli_fetch_assoc($query);

    $title = $article['title'];
    $description = $article['description'];
    $id = $article['id'];
}

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
    <!-- Article Content -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h2 class="card-title"><?php echo $article['title']; ?></h2>
                        <hr>
                        <div class="card-text">
                            <td><?php echo $article['title'] ?></td>
                            <?php echo nl2br($article['description']); ?></p>
                        </div>

                        <!-- button -->
                        <a href="indexUser.php" class="btn btn-primary mt-2  w-100">Kembali ke Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
