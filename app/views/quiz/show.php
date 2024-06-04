<!DOCTYPE html>
<html lang="fr">
<head>
    <!-- Déclaration de l'encodage des caractères -->
    <meta charset="UTF-8">
    <!-- Déclaration pour un affichage responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Titre de la page -->
    <title>Quiz</title>
    <!-- Lien vers le fichier CSS pour le quiz -->
    <link rel="stylesheet" href="/SAE_QUIZ-master/public/css/quiz.css">
    <!-- Lien vers le fichier JavaScript pour le quiz -->
    <script src="/SAE_QUIZ-master/public/js/quiz.js" defer></script>
</head>
<body>
<form action="/SAE_QUIZ-master/index.php?controller=quiz&action=result" method="POST">
    <?php foreach ($questions as $index => $question): ?>
        <section class="section-quiz" id="section-<?= $index + 1 ?>">
            <main>
                <div class="text-container">
                    <!-- Affichage du thème du quiz -->
                    <h3>Quiz sur <?= htmlspecialchars($theme['name']) ?></h3>
                    <!-- Affichage du numéro de la question et du nombre total de questions -->
                    <p>QUESTION <?= $index + 1 ?> OF <?= count($questions) ?></p>
                    <!-- Affichage du texte de la question -->
                    <p><?= $question['question_text'] ?></p>
                </div>
                <div class="quiz-options">
                    <?php foreach ($question['answers'] as $answerIndex => $answer): ?>
                        <!-- Bouton radio pour les options de réponse -->
                        <input type="radio" class="input-radio" id="answer-<?= $index ?>-<?= $answerIndex ?>" name="question_<?= $question['id'] ?>" value="<?= $answer['id'] ?>" data-correct="<?= $answer['is_correct'] ?>">
                        <!-- Étiquette pour les boutons radio -->
                        <label class="radio-label" for="answer-<?= $index ?>-<?= $answerIndex ?>">
                            <!-- Affichage des lettres A, B, C, etc. pour les réponses -->
                            <span class="alphabet"><?= chr(65 + $answerIndex) ?></span> <?= $answer['answer_text'] ?>
                        </label>
                    <?php endforeach; ?>
                </div>
                <!-- Bouton pour soumettre la dernière question -->
                <?php if ($index + 1 === count($questions)): ?>
                    <button type="submit" class="btn" disabled onclick="">Valider</button>
                <!-- Bouton pour passer à la question suivante -->
                <?php else: ?>
                    <button type="button" class="btn" disabled onclick="showNextQuestion()">Next</button>
                <?php endif; ?>
            </main>
        </section>
    <?php endforeach; ?>
    <!-- Champ caché pour stocker l'ID du thème -->
    <input type="hidden" name="theme_id" value="<?= $theme_id ?>">
</form>
</body>
</html>
