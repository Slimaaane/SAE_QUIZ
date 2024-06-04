<?php
// Démarrer la session
session_start();

// Inclure les fichiers de configuration
require_once 'public/config/config.php';
require_once 'public/config/database.php';

// Déterminer le contrôleur et l'action à partir des paramètres GET, avec des valeurs par défaut
$controller = isset($_GET['controller']) ? $_GET['controller'] : 'quiz';
$action = isset($_GET['action']) ? $_GET['action'] : 'home';

// Inclure le fichier du contrôleur correspondant
require_once __DIR__ . "/app/controllers/{$controller}Controller.php";

// Construire le nom de la classe du contrôleur et créer une instance de celle-ci
$controllerClass = ucfirst($controller) . 'Controller';
$controllerObject = new $controllerClass();

// Vérifier si l'action est 'result' et si la requête est de type POST
if ($action === 'result' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    // Appeler la méthode 'result' du contrôleur
    $controllerObject->result();
} else {
    // Appeler la méthode correspondant à l'action du contrôleur
    $controllerObject->$action();
}

?>
