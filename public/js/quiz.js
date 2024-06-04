// Ajouter un écouteur d'événement au document pour s'assurer que le script s'exécute une fois que le DOM est entièrement chargé
document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('form'); // Sélectionner le formulaire
    let currentQuestionIndex = 0; // Initialiser l'indice de la question actuelle à 0
    const sections = document.querySelectorAll('.section-quiz'); // Sélectionner toutes les sections du quiz

    // Ajouter un écouteur d'événement pour détecter les changements dans le formulaire
    form.addEventListener('change', () => {
        const selectedAnswer = form.querySelector('input[type="radio"]:checked'); // Sélectionner la réponse choisie
        const currentSection = sections[currentQuestionIndex]; // Obtenir la section actuelle
        const button = currentSection.querySelector('.btn'); // Sélectionner le bouton dans la section actuelle
        button.disabled = !selectedAnswer; // Activer/désactiver le bouton en fonction de la réponse sélectionnée
    });

    // Ajouter un écouteur d'événement pour le soumission du formulaire
    form.addEventListener('submit', (e) => {
        if (currentQuestionIndex < sections.length - 1) {
            e.preventDefault(); // Empêcher la soumission du formulaire pour toutes les questions sauf la dernière
            showNextQuestion(); // Afficher la question suivante
        } else {
            // Autoriser la soumission du formulaire pour la dernière question
            const selectedAnswer = form.querySelector('input[type="radio"]:checked'); // Sélectionner la réponse choisie
            const allAnswers = form.querySelectorAll('input[type="radio"]'); // Sélectionner toutes les réponses
            const correctAnswer = form.querySelector('input[data-correct="true"]'); // Sélectionner la bonne réponse

            if (selectedAnswer.dataset.correct === "true") {
                selectedAnswer.nextElementSibling.classList.add('correct'); // Ajouter la classe 'correct' à la réponse correcte sélectionnée
            } else {
                allAnswers.forEach(answer => {
                    const label = answer.nextElementSibling;
                    if (answer.dataset.correct === "true") {
                        label.classList.add('correct'); // Ajouter la classe 'correct' aux labels des réponses correctes
                    } else {
                        label.classList.add('incorrect'); // Ajouter la classe 'incorrect' aux labels des réponses incorrectes
                    }
                });
            }

            form.querySelector('.btn').disabled = false; // Activer le bouton pour permettre la soumission finale
        }
    });

    // Fonction pour afficher la question suivante
    function showNextQuestion() {
        const currentSection = sections[currentQuestionIndex]; // Obtenir la section actuelle
        const selectedAnswer = currentSection.querySelector('input[type="radio"]:checked'); // Sélectionner la réponse choisie

        if (!selectedAnswer) {
            alert("Veuillez sélectionner une réponse avant de continuer."); // Alerter l'utilisateur s'il n'a pas sélectionné de réponse
            return;
        }

        currentSection.style.display = 'none'; // Masquer la section actuelle
        currentQuestionIndex++; // Incrémenter l'indice de la question actuelle

        if (currentQuestionIndex < sections.length) {
            const nextSection = sections[currentQuestionIndex]; // Obtenir la section suivante
            nextSection.style.display = 'block'; // Afficher la section suivante
            updateButtonState(); // Mettre à jour l'état du bouton
        }
    }

    // Fonction pour mettre à jour l'état du bouton
    function updateButtonState() {
        const currentSection = sections[currentQuestionIndex]; // Obtenir la section actuelle
        const button = currentSection.querySelector('.btn'); // Sélectionner le bouton dans la section actuelle
        const selectedAnswer = currentSection.querySelector('input[type="radio"]:checked'); // Sélectionner la réponse choisie
        button.disabled = !selectedAnswer; // Activer/désactiver le bouton en fonction de la réponse sélectionnée
    }

    // Masquer toutes les sections sauf la première
    sections.forEach((section, index) => {
        if (index !== 0) {
            section.style.display = 'none';
        }
    });

    // Ajouter des écouteurs d'événement aux boutons "Next"
    const buttons = document.querySelectorAll('.btn[type="button"]');
    buttons.forEach(button => {
        button.addEventListener('click', showNextQuestion); // Appeler showNextQuestion lorsque le bouton est cliqué
    });
});
