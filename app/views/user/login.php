<!DOCTYPE html>
<html lang="fr">
<head>
    <!-- Déclaration de l'encodage des caractères -->
    <meta charset="UTF-8">
    <!-- Déclaration pour un affichage responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Titre de la page -->
    <title>Connexion/Inscription</title>
    <!-- Lien vers le fichier CSS pour la connexion et l'inscription -->
    <link rel="stylesheet" href="public/css/connexion.css">
</head>
<body>
<main>
    <div class="box">
        <div class="inner-box">
            <div class="forms-wrap">
                <!-- Formulaire de connexion -->
                <form action="" method="POST" class="sign-in-form">
                    <div class="logo">
                        <!-- Logo du site -->
                        <img src="Ressources/QuizMaster.png" alt="QuizMaster">
                    </div>

                    <div class="heading">
                        <!-- Titre et lien pour basculer vers le formulaire d'inscription -->
                        <h2>Se connecter</h2>
                        <h6>Vous n'êtes pas encore inscrit?</h6>
                        <br>
                        <a href="#" class="toggle" id="toggle-to-sign-up">S'inscrire</a>
                        <!-- Affichage des messages d'erreur -->
                        <p class="message-erreur"><?= $message ?></p>
                    </div>

                    <div class="actual-form">
                        <!-- Champ pour le nom d'utilisateur -->
                        <div class="input-wrap">
                            <input type="text" name="pseudo_connexion" minlength="4" class="input-field" autocomplete="off" required>
                            <label></label>
                        </div>

                        <!-- Champ pour le mot de passe -->
                        <div class="input-wrap">
                            <input type="password" name="mdp_connexion" minlength="4" class="input-field" autocomplete="off" required>
                            <label></label>
                        </div>

                        <!-- Bouton de soumission pour se connecter -->
                        <input type="submit" name="envoi_connexion" value="Se connecter" class="sign-btn">
                    </div>
                </form>

                <!-- Formulaire d'inscription -->
                <form action="" method="POST" class="sign-up-form">
                    <div class="logo">
                        <!-- Logo du site -->
                        <img src="Ressources/QuizMaster.png" alt="QuizMaster">
                    </div>

                    <div class="heading">
                        <!-- Titre et lien pour basculer vers le formulaire de connexion -->
                        <h2>S'inscrire</h2>
                        <h6>Avez-vous déjà un compte?</h6>
                        <a href="#" class="toggle" id="toggle-to-sign-in">Se connecter</a>
                        <!-- Affichage des messages d'erreur -->
                        <p class="message-erreur"><?= $message ?></p>
                    </div>

                    <div class="actual-form">
                        <!-- Champ pour le nom d'utilisateur -->
                        <div class="input-wrap">
                            <input type="text" name="pseudo_inscription" minlength="4" class="input-field" autocomplete="off" required>
                            <label>Nom utilisateur</label>
                        </div>

                        <!-- Champ pour le mot de passe -->
                        <div class="input-wrap">
                            <input type="password" name="mdp_inscription" minlength="4" class="input-field" autocomplete="off" required>
                            <label>Mot de passe</label>
                        </div>

                        <!-- Bouton de soumission pour s'inscrire -->
                        <input type="submit" name="envoi_inscription" value="S'inscrire" class="sign-btn">
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>

<!-- Lien vers le fichier JavaScript -->
<script src="/SAE_QUIZ-master/public/js/app.js"></script>
</body>
</html>
