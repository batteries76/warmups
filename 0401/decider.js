console.log('decider.js');
winnerH = 0;
winnerT = 0;

var flipButton = document.getElementById('flip-button');

var coinFlip = function(){
  var winner;
  var randCoin = Math.random();
  if (randCoin<=0.5){
    console.log('HEADS');
    winner = 'Heads';
    winnerH++;
    if(winnerH==5){
        console.log('WINNER is Heads');
    }
  }
  else{
    console.log('TAILS');
    winnerT++;
    winner = 'Tails';
    if(winnerT==5){
        console.log('WINNER is Tails');
    }
  }
  return winner;
}

flipButton.addEventListener('click', function(){
  var winner;
  winner = coinFlip()
  document.getElementById("result").innerHTML = winner;
  if(winnerT == 5){
    document.getElementById("winner").innerHTML = 'TAILS is the WINNER';
  }
  if(winnerH == 5){
    document.getElementById("winner").innerHTML = 'HEADS is the WINNER';
  }
});
