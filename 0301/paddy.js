console.log('paddy');

askCount = 0;

var rotateAmount = 0;

var img = document.getElementsByTagName('img')[0];

var questionBox = document.getElementById('question');

var answerButton = document.getElementById('answer');

var shamroll = function() {

  img.style.transform = rotate(7deg);
}

var answerer = function() {

  var question = questionBox.value;

  if (question === 'Happy St Patrick\'s'){
    document.getElementById('answer-area').innerHTML = 'Tildlely de, potatoes';
  }
  else if (question === 'Paddy, it\'s your round.') {
    document.getElementById('answer-area').innerHTML = 'Look, Leprechaun!';
  }
  else if (question === 'Do you want a pint of Guinness?') {
    askCount++;
      if(askCount > 1){
        document.getElementById('answer-area').innerHTML = 'Just the luck of the Irish.';
        askCount = 0;
      }
  }
  else {
    document.getElementById('answer-area').innerHTML = 'What?!';
    shamroll();
  }
}

answerButton.addEventListener('click', answerer);
answerButton.addEventListener('mouseover', shamroll);
answerButton.addEventListener('mouseleave', shamrock)
