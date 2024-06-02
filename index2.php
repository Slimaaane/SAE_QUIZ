<?php
session_start();
if(!$_SESSION['mdp']){
    header('Location: connexion.php');
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QuizzItium Accueil</title>
    <link rel="stylesheet" href="index2.css">
</head>

<body>
    <div class="container">
        <div class="header">
            <div class="btn-container" id="btn-logout-container">
                <a href='deconnexion.php'><button class="btn" id="btn-login">Se déconnecter</button></a>
                <a href='profil.php'><button class="btn" id="btn-profil">Mon Profil</button></a>
            </div>
            <div class="img_div">
                <img class="img_quiz" src="Ressources\QuizMaster.png">
            </div>
            <div class="titre_menu">
                <h1><?php echo 'Bienvenue ' . $_SESSION['pseudo'] . ' !'; ?> </h1>
            </div>
            <div class="sous_titre">
                <h3 style="text-decoration: underline;">Choisissez votre thème</h3>
            </div>
        </div>
        <div class="themes-container">
            <div class="theme theme-food">
                <a class="theme_txt btn" href="./quizz_nourriture/quizz.php">Thème de la nourriture</a>
            </div>
            <div class="theme theme-informatique">
                <a class="theme_txt btn" href="./quizz_informatique/quizz.php">Thème de l'informatique</a>
            </div>
            <div class="theme theme-energy">
                <a class="theme_txt btn" href="./quizz_energie/quizz.php">Thème de l'énergie</a>
            </div>
            <div class="theme theme-lol">
                <a class="theme_txt btn" href="./quizz_lol/quizz.php">Thème de League of Legends</a>
            </div>
            <div class="theme theme-sport">
                <a class="theme_txt btn" href="#">Thème du sport</a>
            </div>
            <div class="theme theme-music">
                <a class="theme_txt btn" href="#">Thème de la musique</a>
            </div>
            <div class="theme theme-cinema">
                <a class="theme_txt btn" href="#">Thème du cinéma</a>
            </div>
            <div class="theme theme-history">
                <a class="theme_txt btn" href="#">Thème de l'histoire</a>
            </div>
            <div class="theme theme-geography">
                <a class="theme_txt btn" href="#">Thème de la géographie</a>
            </div>
            <div class="theme theme-literature">
                <a class="theme_txt btn" href="#">Thème de la littérature</a>
            </div>
            <div class="theme theme-science">
                <a class="theme_txt btn" href="#">Thème des sciences</a>
            </div>
            <div class="theme theme-art">
                <a class="theme_txt btn" href="#">Thème de l'art</a>
            </div>
        </div>
    </div>

    <script>
    </script>
</body>

</html>
