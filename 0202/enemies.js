console.log('enemies.js');

var enemies = function(leftWord, rightWord) {

  splitLeft = leftWord.split('');
//  console.log(splitLeft);
  splitRight = rightWord.split('');
  var alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  var startArr1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var startArr2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var finishArr1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var finishArr2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var score1 = 0;
  var score2 = 0;

  for(i=0; i<splitLeft.length; i++){
    for(j=0; j<26; j++){
      if(alpha[j] === splitLeft[i]){
        startArr1[j]++;
      }
    }
  }
//  console.log(startArr1);

  for(i=0; i<splitRight.length; i++){
    for(j=0; j<26; j++){
      if(alpha[j] === splitRight[i]){
        startArr2[j]++;
      }
    }
  }
//  console.log(startArr2);

  for(i=0; i<26; i++){
    if(startArr1[i]>startArr2[i]){
      finishArr1[i] = startArr1[i] - startArr2[i];
      finishArr2[i] = 0;
    }
    else if(startArr2[i]>startArr1[i]){
      finishArr2[i] = startArr2[i] - startArr1[i];
      finishArr1[i] = 0;
    }
    else {
      finishArr1[i] = 0;
      finishArr2[i] = 0;
    }
  }

//  console.log(finishArr1);
//  console.log(finishArr2);

  for(i=0; i<26; i++){
    score1 += finishArr1[i];
  }

  for(i=0; i<26; i++){
    score2 += finishArr2[i];
  }

  if(score1>score2) {
    console.log(leftWord + ' wins, ' + score1 + ' to ' + score2);
  }
  else if (score2>score1){
    console.log(rightWord + ' wins, ' + score2 + ' to ' + score1);
  }
  else {
    console.log('It was a TIE, ' + score1 + ' all!');
  }

}
