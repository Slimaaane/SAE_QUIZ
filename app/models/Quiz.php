<?php
// Inclusion du fichier de configuration de la base de données
require_once __DIR__ . '/../../public/config/database.php';

class Quiz {
    private $db; // Propriété pour stocker la connexion à la base de données

    // Constructeur pour initialiser la connexion à la base de données
    public function __construct() {
        $this->db = getDB(); // Obtention de la connexion à la base de données
    }

    // Méthode pour récupérer tous les thèmes
    public function getThemes() {
        $stmt = $this->db->query("SELECT * FROM themes"); // Exécution de la requête SQL
        return $stmt->fetch_all(MYSQLI_ASSOC); // Retour des résultats sous forme de tableau associatif
    }

    // Méthode pour récupérer les questions par thème
    public function getQuestionsByTheme($theme_id) {
        $stmt = $this->db->prepare("SELECT * FROM questions WHERE theme_id = ?"); // Préparation de la requête SQL
        $stmt->bind_param('i', $theme_id); // Liaison du paramètre de thème
        $stmt->execute(); // Exécution de la requête
        $result = $stmt->get_result(); // Obtention des résultats
        $questions = $result->fetch_all(MYSQLI_ASSOC); // Récupération des questions

        // Boucle pour récupérer les réponses associées à chaque question
        foreach ($questions as &$question) {
            $question['answers'] = $this->getAnswersByQuestion($question['id']);
        }

        return $questions; // Retour des questions avec leurs réponses
    }

    // Méthode pour récupérer les réponses par question
    public function getAnswersByQuestion($question_id) {
        $stmt = $this->db->prepare("SELECT * FROM answers WHERE question_id = ?"); // Préparation de la requête SQL
        $stmt->bind_param('i', $question_id); // Liaison du paramètre de question
        $stmt->execute(); // Exécution de la requête
        $result = $stmt->get_result(); // Obtention des résultats
        return $result->fetch_all(MYSQLI_ASSOC); // Retour des réponses sous forme de tableau associatif
    }

    // Méthode pour récupérer la réponse correcte d'une question
    public function getCorrectAnswer($question_id) {
        $stmt = $this->db->prepare("SELECT id FROM answers WHERE question_id = ? AND is_correct = 1"); // Préparation de la requête SQL
        $stmt->bind_param('i', $question_id); // Liaison du paramètre de question
        $stmt->execute(); // Exécution de la requête
        $result = $stmt->get_result(); // Obtention des résultats
        return $result->fetch_column(); // Retour de l'ID de la réponse correcte
    }

    // Méthode pour récupérer le nom d'un thème
    public function getTheme($theme_id) {
        $stmt = $this->db->prepare("SELECT name FROM themes WHERE id = ?"); // Préparation de la requête SQL
        $stmt->bind_param('i', $theme_id); // Liaison du paramètre de thème
        $stmt->execute(); // Exécution de la requête
        $result = $stmt->get_result(); // Obtention des résultats
        return $result->fetch_assoc(); // Retour du nom du thème sous forme de tableau associatif
    }
}
?>