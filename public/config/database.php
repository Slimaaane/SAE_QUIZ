<?php
// Inclure le fichier de configuration pour obtenir les constantes de connexion à la base de données
require_once 'config.php';

// Fonction pour obtenir une connexion à la base de données
function getDB() {
    // Variable statique pour maintenir une seule instance de connexion
    static $conn = null;

    // Si la connexion n'a pas encore été établie, la créer
    if ($conn === null) {
        // Créer une nouvelle connexion MySQLi avec les constantes définies dans config.php
        $conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

        // Vérifier si la connexion a échoué
        if ($conn->connect_error) {
            // Terminer le script et afficher un message d'erreur si la connexion échoue
            die("Connection failed: " . $conn->connect_error);
        }
    }

    // Retourner l'instance de connexion
    return $conn;
}
?>
