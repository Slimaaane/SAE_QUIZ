<?php
session_start();
if (!isset($_SESSION['pseudo'])) {
    header("Location: connexion.php");
    exit;
}

// Connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "resultat";

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Récupérer le score depuis le formulaire
$score = $_POST['score']; // Assure-toi de valider et de sécuriser cette donnée

// Enregistrer le score dans la base de données
$sql = "INSERT INTO scores (pseudo, score) VALUES ('" . $_SESSION['pseudo'] . "', $score)";

if ($conn->query($sql) === TRUE) {
    // Rediriger vers la page de résultat
    header("Location: resultats.php");
    exit;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>