<?php
session_start();


$isUserLoggedIn = isset($_SESSION['pseudo']) && isset($_SESSION['id']);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Questionnaire Quizitium, Thème de League of Legends">
    <link rel="icon" href="../Ressources/icone.png">
    <title>QuizzItium Thème League of Legends</title>
    <link rel="stylesheet" href="./quizz.css">
</head>
<body>

    <a class="return_menu" href="<?php echo $isUserLoggedIn ? '../index2.php' : '../index.php'; ?>">
        <img class="img_fleche" src="../Ressources/60793.png">
    </a>
    
    <div class="main_content">
        <div id="header_screen" class="header_screen">
            <h1 class="title"> QuizzItium Thème League of Legends </h1>
            <span class="sous_title"> Il y a <span class="nbrQuestion"> ?? </span> Questions </span>
            <div>
                <button id="btn_start" class="start"> Commencer </button>
            </div>
        </div>

        <div id="questions_screen" class="questions_screen"></div>

        <div id="result_screen" class="result_screen">
            <h2 class=""> Résultat </h2>
            <span class=""> Vous avez <span id="nbrCorrects"> ?? </span> réponses correctes sur <span class="nbrQuestion"> ?? </span> </span>
        </div>
    </div>

    <script src="./scriptEnergie.js"></script>
</body>
</html>
