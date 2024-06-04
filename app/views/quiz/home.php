<!DOCTYPE html>
<html lang="fr">
<head>
    <!-- Déclaration de l'encodage des caractères -->
    <meta charset="UTF-8">
    <!-- Déclaration pour un affichage responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Titre de la page -->
    <title>QuizzItium Accueil</title>
    <!-- Lien vers le fichier CSS -->
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body>
<div class="container">
    <div class="header">
        <!-- Vérification si l'utilisateur est connecté -->
        <?php if (isset($_SESSION['username'])): ?>
            <!-- Formulaire de déconnexion -->
            <form id="logout-form" action="?controller=user&action=logout" method="POST">
                <button type="submit" id="logout-btn">Se déconnecter</button>
            </form>
        <?php else: ?>
            <!-- Bouton pour se connecter -->
            <button id="btn-login">Se connecter</button>
        <?php endif; ?>
        <!-- Section de l'image du quiz -->
        <div class="img_div">
            <img class="img_quiz" src="Ressources/QuizMaster.png" alt="Image QuizMaster">
        </div>
        <!-- Titre principal -->
        <div class="titre_menu">
            <h1>Bienvenue <?= isset($_SESSION['username']) ? $_SESSION['username'] : 'sur QuizMaster' ?>!</h1>
        </div>
        <!-- Sous-titre -->
        <div class="sous_titre">
            <h3 style="text-decoration: underline;">Choisissez votre thème</h3>
        </div>
    </div>
    <!-- Conteneur des thèmes -->
    <div class="themes-container">
        <!-- Boucle pour afficher les thèmes disponibles -->
        <?php foreach ($themes as $theme): ?>
            <div class="theme">
                <!-- Lien vers la page du quiz pour le thème sélectionné -->
                <a class="theme_txt btn" href="?controller=quiz&action=show&id=<?= $theme['id'] ?>"><?= $theme['name'] ?></a>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<script>
    // Ajout d'un événement pour le bouton de connexion
    document.getElementById("btn-login").addEventListener("click", function() {
        window.location.href = "?controller=user&action=login"; // Redirection vers la page de connexion
    });
</script>
</body>
</html>