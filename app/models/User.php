<?php
// Inclusion du fichier de configuration de la base de données
require_once __DIR__ . '/../../public/config/database.php';

class User {
    private $db; // Propriété pour stocker la connexion à la base de données

    // Constructeur pour initialiser la connexion à la base de données
    public function __construct() {
        $this->db = getDB(); // Obtention de la connexion à la base de données
    }

    // Méthode pour connecter un utilisateur
    public function login($username, $password) {
        $username = htmlspecialchars($username); // Protection contre les attaques XSS
        $password = sha1($password); // Hachage du mot de passe

        // Préparation de la requête SQL pour vérifier les informations de connexion
        $stmt = $this->db->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
        $stmt->bind_param('ss', $username, $password); // Liaison des paramètres
        $stmt->execute(); // Exécution de la requête
        $result = $stmt->get_result(); // Obtention des résultats

        // Vérification si l'utilisateur existe
        if ($result->num_rows > 0) {
            $_SESSION['username'] = $username; // Initialisation de la session utilisateur
            return ''; // Retourne une chaîne vide si la connexion est réussie
        } else {
            return 'Votre nom d\'utilisateur ou mot de passe est incorrect'; // Message d'erreur
        }
    }

    // Méthode pour inscrire un nouvel utilisateur
    public function register($username, $password) {
        $username = htmlspecialchars($username); // Protection contre les attaques XSS
        $password = sha1($password); // Hachage du mot de passe

        // Préparation de la requête SQL pour vérifier si le nom d'utilisateur existe déjà
        $stmt = $this->db->prepare("SELECT * FROM users WHERE username = ?");
        $stmt->bind_param('s', $username); // Liaison du paramètre
        $stmt->execute(); // Exécution de la requête
        $result = $stmt->get_result(); // Obtention des résultats

        // Vérification si le nom d'utilisateur est déjà pris
        if ($result->num_rows > 0) {
            return 'Le nom d\'utilisateur est déjà pris.'; // Message d'erreur
        } else {
            // Préparation de la requête SQL pour insérer un nouvel utilisateur
            $stmt = $this->db->prepare("INSERT INTO users (username, password, created_at) VALUES (?, ?, NOW())");
            $stmt->bind_param('ss', $username, $password); // Liaison des paramètres
            if ($stmt->execute()) { // Exécution de la requête
                $_SESSION['username'] = $username; // Initialisation de la session utilisateur
                return ''; // Retourne une chaîne vide si l'inscription est réussie
            } else {
                return 'Une erreur est survenue lors de l\'inscription.'; // Message d'erreur
            }
        }
    }
}
?>
