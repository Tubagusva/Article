<?php
session_start(); // HARUS DITAMBAG KETIKA MENGGUNAKAN SESSION

// REDIRECT USER YANG SUDAH LOGIN KE INDEX
if (isset($_SESSION['login'])) {
    header('location: ../index.php');
    exit;
}

include('authProcess.php');

if (isset($_POST['login'])) {
    login($_POST);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            overflow: hidden;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 0.8s ease;
        }
        .form-control {
            border-radius: 8px;
            padding: 15px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            padding: 12px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .custom-link {
            color: #007bff;
            text-decoration: none;
        }
        .custom-link:hover {
            text-decoration: underline;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="card p-4" style="width: 100%; max-width: 400px;">
        <div class="text-center mb-4">
            <h3 class="fw-bold">Login</h3>
            <p class="text-muted">Access your account now</p>
        </div>
        <form action="" method="POST">
            <div class="mb-3">
                <input type="text" id="name"  name="name" class="form-control" placeholder="Username" required>
            </div>
            <div class="mb-3">
                <input type="text"  id="email" name="email" class="form-control" placeholder="Email" required>
            </div>
            <div class="mb-3">
                <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100" name="login">Login</button>
        </form>
        <div class="text-center mt-3">
            <p class="mb-0">Don't have an account? <a href="register.php" class="custom-link">Register</a></p>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
