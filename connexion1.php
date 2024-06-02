<?php
session_start();
$bdd = new PDO('mysql:host=localhost;dbname=membres;charset=utf8;', 'root');
$message = '';

if (!isset($_SESSION['message'])) {
    $_SESSION['message'] = ""; 
}
if (isset($_POST['envoi_connexion'])) {
    if (!empty($_POST['pseudo_connexion']) AND !empty($_POST['mdp_connexion'])) {
        $pseudo = htmlspecialchars($_POST['pseudo_connexion']);
        $mdp = sha1($_POST['mdp_connexion']);

        $recupUser = $bdd->prepare('SELECT * from user WHERE pseudo = ? AND mdp = ?');
        $recupUser->execute(array($pseudo, $mdp));

        if ($recupUser->rowCount() > 0) {
            $_SESSION['pseudo'] = $pseudo;
            $_SESSION['mdp'] = $mdp;
            $_SESSION['id'] = $recupUser->fetch()['id'];
            header('Location: index2.php');
            exit;
        } else {
            $message = "Votre nom d'utilisateur ou mot de passe est incorrect";
        }
    } else {
        $message = "Veuillez compléter tous les champs.";
    }
}

if (isset($_POST['envoi_inscription'])) {
    if (!empty($_POST['pseudo_inscription']) AND !empty($_POST['mdp_inscription'])) {
        $pseudo = htmlspecialchars($_POST['pseudo_inscription']);
        $mdp = sha1($_POST['mdp_inscription']);
        $insertUser = $bdd->prepare('INSERT INTO user(pseudo, mdp) VALUES(?, ?)');
        $insertUser->execute(array($pseudo, $mdp));

        $recupUser = $bdd->prepare('SELECT * from user WHERE pseudo = ? AND mdp = ?');
        $recupUser->execute(array($pseudo, $mdp));
        if ($recupUser->rowCount() > 0) {
            $_SESSION['pseudo'] = $pseudo;
            $_SESSION['mdp'] = $mdp;
            $_SESSION['id'] = $recupUser->fetch()['id'];
            header('Location: index2.php');
        }
    } else {
        echo "Veuillez compléter tous les champs.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Connexion/Inscription</title>
    <link rel="stylesheet" href="connexion1.css" />
</head>
<body>
<main>
    <div class="box">
        <div class="inner-box">
            <div class="forms-wrap">
                <form action="" method="POST" class="sign-in-form">
                    <div class="logo">
                        <img src="Ressources\QuizMaster.png" alt="QuizMaster" />
                    </div>

                    <div class="heading">
                        <h2>Se connecter</h2>
                        <h6>Vous n'êtes pas encore inscrit?</h6>
                        <br>
                        <a href="#" class="toggle" id="toggle-to-sign-up">S'inscrire</a>
                        <p class="message-erreur"><?php echo $message; ?></p>
                    </div>

                    <div class="actual-form">
                        <div class="input-wrap">
                            <input type="text" name="pseudo_connexion" minlength="4" class="input-field" autocomplete="off" required />
                            <label>Nom utilisateur</label>
                        </div>

                        <div class="input-wrap">
                            <input type="password" name="mdp_connexion" minlength="4" class="input-field" autocomplete="off" required />
                            <label>Mot de passe</label>
                        </div>

                        <input type="submit" name="envoi_connexion" value="Se connecter" class="sign-btn" />

                        <p class="text">
                            Avez-vous oublié votre mot de passe?
                            <a href="#">Obtenez de l'aide</a>
                        </p>
                    </div>
                </form>

                <form action="" method="POST" class="sign-up-form">
                    <div class="logo">
                        <img src="Ressources\QuizMaster.png" alt="QuizzMaster" />
                    </div>

                    <div class="heading">
                        <h2>S'inscrire</h2>
                        <h6>Avez-vous déjà un compte?</h6>
                        <a href="#" class="toggle" id="toggle-to-sign-in">Se connecter</a>
                    </div>

                    <div class="actual-form">
                        <div class="input-wrap">
                            <input type="text" name="pseudo_inscription" minlength="4" class="input-field" autocomplete="off" required />
                            <label>Nom utilisateur</label>
                        </div>

                        <div class="input-wrap">
                            <input type="password" name="mdp_inscription" minlength="4" class="input-field" autocomplete="off" required />
                            <label>Mot de passe</label>
                        </div>

                        <input type="submit" name="envoi_inscription" value="S'inscrire" class="sign-btn" />

                        <p class="text">
                            En m'inscrivant, j'accepte 
                            <a href="#">les conditions d'utilisation</a> et
                            <a href="#">la politique de confidentialité</a>
                        </p>
                    </div>
                </form>
            </div>

            <div class="carousel">
                <div class="images-wrapper">
                    <img src="./img/image1.png" class="image img-1 show" alt="" />
                    <img src="./img/image4.png" class="image img-2" alt="" />
                    <img src="./img/image3.png" class="image img-3" alt="" />
                </div>

                <div class="text-slider">
                    <div class="text-wrap">
                        <div class="text-group">
                            <h2>Soyez malin, soyez QuizMaster !</h2>
                            <h2>Plus on quiz, plus on rit !</h2>
                            <h2>La réponse est au 
                                 bout de tes neurones !</h2>
                        </div>
                    </div>

                    <div class="bullets">
                        <span class="active" data-value="1"></span>
                        <span data-value="2"></span>
                        <span data-value="3"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<!-- Javascript file -->
<script src="app.js"></script>
</body>
</html>
