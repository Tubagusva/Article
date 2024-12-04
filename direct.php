<?php

session_start();
var_dump($_SESSION);

// REDIRECT USER YANG BELUM LOGIN KE LOGIN.php
if (!isset($_SESSION['login'])) {
    header('location: ./auth/login.php');
    exit;
}

if (isset($_SESSION['admin'])) {
    header('location: ./index.php');
    exit;
}

if (isset($_SESSION['user'])) {
    header('location: ./indexUser.php');
    exit;
}