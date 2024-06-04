// Ajouter un écouteur d'événement au bouton avec l'ID "toggle-to-sign-up"
document.getElementById("toggle-to-sign-up").addEventListener("click", function() {
  // Masquer le formulaire de connexion en définissant son style display à "none"
  document.querySelector(".sign-in-form").style.display = "none";
  // Afficher le formulaire d'inscription en définissant son style display à "block"
  document.querySelector(".sign-up-form").style.display = "block";
});

// Ajouter un écouteur d'événement au bouton avec l'ID "toggle-to-sign-in"
document.getElementById("toggle-to-sign-in").addEventListener("click", function() {
  // Masquer le formulaire d'inscription en définissant son style display à "none"
  document.querySelector(".sign-up-form").style.display = "none";
  // Afficher le formulaire de connexion en définissant son style display à "block"
  document.querySelector(".sign-in-form").style.display = "block";
});
