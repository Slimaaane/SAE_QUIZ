// Récupérer les éléments HTML
const header_screen = document.getElementById("header_screen");
const questions_screen = document.getElementById("questions_screen");
const result_screen = document.getElementById("result_screen");
const btn_start = document.getElementById("btn_start");
const nbrQuestionElements = document.querySelectorAll(".nbrQuestion");

// Définir la classe Quiz
class Quiz {
    constructor() {
        this.questions = [];
        this.nbrCorrects = 0;
        this.indexCurrentQuestion = 0;
    }

    // Ajouter une question au quiz
    addQuestion(question) {
        this.questions.push(question);
    }

    // Afficher la question courante
    displayCurrentQuestion() {
        if (this.indexCurrentQuestion < this.questions.length) {
            this.questions[this.indexCurrentQuestion].display();
        } else {
            questions_screen.style.display = "none";
            result_screen.style.display = "block";
            document.getElementById("nbrCorrects").textContent = this.nbrCorrects;
        }
    }
}

// Définir la classe Question
class Question {
    constructor(title, answers, correctAnswers) {
        this.title = title;
        this.answers = answers;
        this.correctAnswers = correctAnswers;
    }

    // Afficher la question et ses réponses
    display() {
        questions_screen.innerHTML = `
            <h3 class="title_questions">${this.title}</h3>
            <ul class="list_questions">
                ${this.answers.map((answer, index) => `<li class="answers" id="${index + 1}">${answer}</li>`).join('')}
            </ul>
            <h4 class="avancement_question">Questions : ${quiz.indexCurrentQuestion + 1}/${quiz.questions.length}</h4>
        `;

        // Ajouter les écouteurs d'événements pour vérifier les réponses
        document.querySelectorAll('.answers').forEach(answerElement => {
            answerElement.addEventListener('click', () => this.checkAnswer(answerElement.id));
        });
    }

    // Vérifier la réponse choisie par l'utilisateur
    checkAnswer(answerId) {
        const answerElement = document.getElementById(answerId);
        const isCorrect = this.correctAnswers.includes(parseInt(answerId));
        if (isCorrect) {
            answerElement.classList.add("answersCorrect");
            quiz.nbrCorrects++;
        } else {
            answerElement.classList.add("answersWrong");
            this.correctAnswers.forEach(index => document.getElementById(index).classList.add("answersCorrect"));
        }

        setTimeout(() => {
            quiz.indexCurrentQuestion++;
            quiz.displayCurrentQuestion();
        }, 1100);
    }
}

// Créer une instance de Quiz
const quiz = new Quiz();

// Ajouter des questions au quiz
quiz.addQuestion(new Question("Quel champion est également connu sous le nom de 'Roi déchu' ?", ["Swain", "Darius", "Mordekaiser", "Sion"], [2]));
quiz.addQuestion(new Question("Quelle est la première ligne de défense dans la base de chaque équipe dans League of Legends ?", ["La tourelle extérieure", "Le Nexus", "Le Inhibiteur", "Le Tireur d'élite"], [1]));
quiz.addQuestion(new Question("Quel champion est surnommé le 'Croc de cristal' ?", ["Nasus", "Renekton", "Malphite", "Skarner"], [4]));
quiz.addQuestion(new Question("Quel est le nom du dragon qui accorde des bonus de vitesse de déplacement ?", ["Le dragon des nuages", "Le dragon infernal", "Le dragon de l'océan", "Le dragon de montagne"], [1]));
quiz.addQuestion(new Question("Quel champion est connu pour ses compétences à invoquer des tourelles ?", ["Heimerdinger", "Malzahar", "Ziggs", "Veigar"], [1]));
quiz.addQuestion(new Question("Quel est le nom de la compétition régulière nord-américaine de League of Legends ?", ["LCS", "LCK", "LEC", "LPL"], [1]));
quiz.addQuestion(new Question("Quel champion est associé à la voie du bas (ADC) en duo avec un support ?", ["Ashe", "Lee Sin", "Darius", "Zed"], [1]));
quiz.addQuestion(new Question("Quelle est la capacité ultime de Jinx ?", ["Super Mega Death Rocket !", "Zap !", "Capturé !", "Dance grenade"], [1]));
quiz.addQuestion(new Question("Quel champion est surnommé 'Le coeur gelé de Freljord' ?", ["Sejuani", "Lissandra", "Anivia", "Ashe"], [4]));
quiz.addQuestion(new Question("Quelle est la principale ressource utilisée par les champions de League of Legends ?", ["Mana", "Énergie", "Fureur", "Endurance"], [1]));

// Mettre à jour le nombre total de questions
nbrQuestionElements.forEach(NbrQuestion => NbrQuestion.textContent = quiz.questions.length);

// Lancer le quiz lorsque le bouton "Commencer" est cliqué
btn_start.addEventListener("click", () => {
    header_screen.style.display = "none";
    questions_screen.style.display = "block";
    quiz.displayCurrentQuestion();
});
