<?php
// Inclusion du modèle Quiz
require_once __DIR__ . '/../models/Quiz.php';

class QuizController {
    // Méthode pour afficher la page d'accueil du quiz
    public function home() {
        $quizModel = new Quiz(); // Instanciation du modèle Quiz
        $themes = $quizModel->getThemes(); // Récupération des thèmes disponibles
        // Inclusion de la vue de la page d'accueil
        require_once __DIR__ . '/../views/quiz/home.php';
    }

    // Méthode pour afficher les questions d'un thème spécifique
    public function show() {
        $theme_id = isset($_GET['id']) ? $_GET['id'] : 1; // Récupération de l'ID du thème (1 par défaut)
        $quizModel = new Quiz(); // Instanciation du modèle Quiz
        $questions = $quizModel->getQuestionsByTheme($theme_id); // Récupération des questions du thème
        $theme = $quizModel->getTheme($theme_id); // Récupération du nom du thème
        // Inclusion de la vue pour afficher les questions
        require_once __DIR__ . '/../views/quiz/show.php';
    }

    // Méthode pour traiter et afficher les résultats du quiz
    public function result() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') { // Vérification que la méthode de requête est POST
            $quizModel = new Quiz(); // Instanciation du modèle Quiz
            $questions = $quizModel->getQuestionsByTheme($_POST['theme_id']); // Récupération des questions du thème
            $score = 0; // Initialisation du score
            $totalQuestions = count($questions); // Nombre total de questions

            // Boucle pour traiter chaque question
            foreach ($questions as $question) {
                if (isset($_POST['question_' . $question['id']])) { // Vérification si une réponse a été soumise
                    $selectedAnswer = $_POST['question_' . $question['id']]; // Récupération de la réponse sélectionnée
                    $correctAnswer = $quizModel->getCorrectAnswer($question['id']); // Récupération de la réponse correcte
                    if ($selectedAnswer == $correctAnswer) { // Vérification si la réponse est correcte
                        $score++; // Incrémentation du score
                    }
                }
            }

            // Définition du message en fonction du score
            $message = $score === $totalQuestions ? 'Bravo!' : 'Dommage!';
            // Inclusion de la vue pour afficher les résultats
            require_once __DIR__ . '/../views/quiz/result.php';
        } else {
            // Message d'erreur si la méthode de requête n'est pas POST
            echo "Invalid request method.";
        }
    }
}
?>

