// Minimal retrieval-practice quiz. Markup:
// <div class="quiz"><p class="q">Question?</p><ul>
//   <li><button data-correct>Right answer</button></li>
//   <li><button>Wrong answer</button></li></ul>
//   <p class="explain">Why.</p></div>
// Options are shuffled on load so position carries no signal.
(function () {
  const quizzes = Array.from(document.querySelectorAll('.quiz'));
  let correct = 0, answered = 0;
  const score = document.querySelector('.quiz-score');
  function updateScore() {
    if (score) score.textContent = answered === 0 ? '' :
      `Score: ${correct} / ${answered} answered (${quizzes.length} total).`;
  }
  quizzes.forEach(function (quiz) {
    const ul = quiz.querySelector('ul');
    const items = Array.from(ul.children);
    for (let i = items.length - 1; i > 0; i--) {          // Fisher-Yates
      const j = Math.floor(Math.random() * (i + 1));
      [items[i], items[j]] = [items[j], items[i]];
    }
    items.forEach(function (li) { ul.appendChild(li); });
    const buttons = Array.from(quiz.querySelectorAll('button'));
    buttons.forEach(function (btn) {
      btn.addEventListener('click', function () {
        if (quiz.classList.contains('answered')) return;
        quiz.classList.add('answered');
        answered++;
        if (btn.hasAttribute('data-correct')) { btn.classList.add('correct'); correct++; }
        else {
          btn.classList.add('wrong');
          buttons.forEach(function (b) { if (b.hasAttribute('data-correct')) b.classList.add('correct'); });
        }
        buttons.forEach(function (b) { b.disabled = true; });
        updateScore();
      });
    });
  });
})();
