<?php
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

// Récupérer les meilleurs scores depuis la base de données
$sql = "SELECT pseudo, score FROM scores ORDER BY score DESC LIMIT 10"; // Sélectionne les 10 meilleurs scores
$result = $conn->query($sql);

// Fermer la connexion
$conn->close();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultats</title>
</head>
<body>
    <h2>Résultats</h2>
    <div>
        <h3>Votre score :</h3>
        <!-- Affiche le score de l'utilisateur -->
        <p>Score : <?php echo $score; ?></p>
    </div>
    <div>
        <h3>Classement :</h3>
        <!-- Affiche les meilleurs scores -->
        <table>
            <tr>
                <th>Utilisateur</th>
                <th>Score</th>
            </tr>
            <?php
            if ($result->num_rows > 0) {
                // Affiche chaque ligne de résultats
                while($row = $result->fetch_assoc()) {
                    echo "<tr><td>" . $row["pseudo"]. "</td><td>" . $row["score"]. "</td></tr>";
                }
            } else {
                echo "0 results";
            }
            ?>
        </table>
    </div>
</body>
</html>