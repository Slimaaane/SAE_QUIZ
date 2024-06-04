<!DOCTYPE html>
<html lang="fr">
<head>
    <!-- Déclaration de l'encodage des caractères -->
    <meta charset="UTF-8">
    <!-- Déclaration pour un affichage responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Titre de la page -->
    <title>Résultat du Quiz</title>
    <!-- Lien vers le fichier CSS pour les résultats -->
    <link rel="stylesheet" href="/SAE_QUIZ-master/public/css/result.css">
</head>
<body>
<div class="container">
    <div class="result_screen">
        <!-- Affichage du message de résultat -->
        <h1 id="result-message"><?= $message ?></h1>
        <!-- Affichage du score de l'utilisateur -->
        <p>Votre score : <?= $score ?> / <?= $totalQuestions ?></p>
        <!-- Lien pour retourner à la page d'accueil -->
        <a href="/SAE_QUIZ-master" class="return_menu">
            <img src="Ressources/60793.png" alt="Retour à l'accueil" width="30px" height="30px" class="img_fleche">
        </a>
    </div>
</div>
</body>
</html>
