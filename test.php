<?php


try {
    $db = new PDO('mysql:host=localhost;dbname=sae1;charset=utf8', 'root', '');
} catch (PDOException $e) {
    die('Erreur de connexion : ' . $e->getMessage());
}
$sujetChoisi = isset($_GET['sujet']) ? $_GET['sujet'] : null;
$score = 0;
$reponsesUtilisateur = [];
$reponsesCorrectes = [];
$reponsesIncorrectes = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    foreach ($_POST as $key => $value) {
        if (strpos($key, 'q') === 0) {
            $questionID = substr($key, 1);
            $reponse = $db->prepare('SELECT * FROM ChoixQuestions WHERE questionID = ? AND estCorrect = 1');
            $reponse->execute([$questionID]);
            $reponseCorrecte = $reponse->fetch(PDO::FETCH_ASSOC);
            $reponsesUtilisateur[$questionID] = $value;
            if ($reponseCorrecte && $value == $reponseCorrecte['choixTexte']) {
                $score++;
                $reponsesCorrectes[$questionID] = $value;
            } else {
                $reponsesIncorrectes[$questionID] = $value;
            }
        }
    }
}
$sujetChoisi = isset($_GET['sujet']) ? $_GET['sujet'] : null;
if ($sujetChoisi) {
    $quiz = $db->prepare('SELECT quizID FROM Quiz WHERE sujet = :sujet');
    $quiz->execute(['sujet' => $sujetChoisi]);
    $quizData = $quiz->fetch(PDO::FETCH_ASSOC);

    if ($quizData) {
        $quizID = $quizData['quizID'];


        $questions = $db->prepare('SELECT * FROM QuestionsQuiz WHERE quizID = :quizID');
        $questions->execute(['quizID' => $quizID]);
    } else {

        echo "Sujet non trouvé.";
    }
} else {

    $sujets = $db->query('SELECT DISTINCT sujet FROM Quiz');
}



?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quizz sur les langues - Air Reis</title>
    <link rel="stylesheet" href="../css/quizz.css">
</head>
<body>

<div class="quiz-container">
    <?php if (!$sujetChoisi): ?>

        <h1>Choisissez un sujet pour le quiz</h1>
        <div class="quiz-subjects">
            <?php foreach ($sujets as $sujet): ?>
                <div class="quiz-subject">
                    <a href="quizzlangue.php?sujet=<?= urlencode($sujet['sujet']) ?>">
                        <img src="../img/<?= urlencode($sujet['sujet']) ?>.jpg" alt="<?= htmlspecialchars($sujet['sujet']) ?>" />
                        <div class="quiz-subject-name"><?= htmlspecialchars($sujet['sujet']) ?></div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
        </form>
    <?php else: ?>

        <div class="quiz-progress">
            <span><?= $questions->rowCount()  ?> QUESTIONS</span>
        </div>
        <h1>Quizz sur <?= htmlspecialchars($sujetChoisi) ?></h1>
        <form action="submit_quizz.php" method="POST">
            <?php while ($question = $questions->fetch(PDO::FETCH_ASSOC)): ?>
                <div class="question">
                    <p><?= htmlspecialchars($question['question']) ?></p>
                    <div class="choices">
                        <?php
                        $choix = $db->prepare('SELECT * FROM ChoixQuestions WHERE questionID = :questionID');
                        $choix->execute(['questionID' => $question['questionID']]);

                        while ($choixQuestion = $choix->fetch(PDO::FETCH_ASSOC)): ?>
                            <input type="radio" id="choice<?= $choixQuestion['choixID'] ?>_<?= $question['questionID'] ?>" name="q<?= $question['questionID'] ?>" value="<?= htmlspecialchars($choixQuestion['choixTexte']) ?>">
                            <label for="choice<?= $choixQuestion['choixID'] ?>_<?= $question['questionID'] ?>"><?= htmlspecialchars($choixQuestion['choixTexte']) ?></label>
                        <?php endwhile; ?>
                    </div>
                </div>

            <?php endwhile; ?>
            <input type="submit" class="submit-btn" value="Valider">
        </form>
    <?php endif; ?>

</div>
</body>
</html>