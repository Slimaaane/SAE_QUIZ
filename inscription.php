<?php
// Connexion à la base de données (remplace ces valeurs par les tiennes)
$servername = "localhost";
$username = "nom_utilisateur";
$password = "mot_de_passe";
$dbname = "nom_base_de_donnees";

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Récupérer les données du formulaire
$username = $_POST['username'];
$password = $_POST['password'];

// Vérifier si le nom d'utilisateur est déjà pris
$sql = "SELECT id FROM Utilisateurs WHERE username = '$username'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "Ce nom d'utilisateur est déjà pris.";
} else {
    // Hacher le mot de passe
    $password_hash = password_hash($password, PASSWORD_DEFAULT);

    // Insérer l'utilisateur dans la base de données
    $sql = "INSERT INTO Utilisateurs (username, password_hash) VALUES ('$username', '$password_hash')";
    if ($conn->query($sql) === TRUE) {
        echo "Inscription réussie!";
    } else {
        echo "Erreur lors de l'inscription : " . $conn->error;
    }
}

$conn->close();
?>
