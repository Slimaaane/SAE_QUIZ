<?php
// Inclusion du modèle User
require_once __DIR__ . '/../models/User.php';

class UserController {
    // Méthode pour gérer la connexion et l'inscription de l'utilisateur
    public function login() {
        $userModel = new User(); // Instanciation du modèle User
        $message = ''; // Initialisation du message

        // Vérification que la méthode de requête est POST
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // Si le formulaire de connexion a été soumis
            if (isset($_POST['envoi_connexion'])) {
                // Appel de la méthode de connexion du modèle User
                $message = $userModel->login($_POST['pseudo_connexion'], $_POST['mdp_connexion']);
                if ($message === '') { // Si la connexion est réussie
                    header('Location: /SAE_QUIZ-master/index.php'); // Redirection vers la page d'accueil
                    exit;
                }
            // Si le formulaire d'inscription a été soumis
            } elseif (isset($_POST['envoi_inscription'])) {
                // Appel de la méthode d'inscription du modèle User
                $message = $userModel->register($_POST['pseudo_inscription'], $_POST['mdp_inscription']);
                if ($message === '') { // Si l'inscription est réussie
                    header('Location: /SAE_QUIZ-master/index.php'); // Redirection vers la page d'accueil
                    exit;
                }
            }
        }

        // Inclusion de la vue pour afficher le formulaire de connexion et d'inscription
        require_once __DIR__ . '/../views/user/login.php';
    }

    // Méthode pour gérer la déconnexion de l'utilisateur
    public function logout() {
        session_start(); // Démarrage de la session
        session_unset(); // Suppression des variables de session
        session_destroy(); // Destruction de la session
        header('Location: /SAE_QUIZ-master/index.php'); // Redirection vers la page d'accueil
        exit;
    }
}
?>
