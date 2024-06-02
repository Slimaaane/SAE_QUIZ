<?php
session_start();

if (isset($_SESSION['id']) && isset($_POST['score'])) {
    $userId = $_SESSION['id'];
    $score = $_POST['score'];

    $pdo = new PDO('mysql:host=localhost;dbname=resultat', 'root', '');

    $stmt = $pdo->prepare("INSERT INTO scores (id, score) VALUES (?, ?)");
    $stmt->execute([$userId, $score]);
}
?>