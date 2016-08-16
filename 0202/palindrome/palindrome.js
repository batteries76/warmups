console.log('palindrome');

var wordList = ['word', 'yyyyyy', 'open', 'closed', 'anna', 'wtytw'];
var flag = 1;
var i = 0;
var palindrome = function(wordList){
  while(i<wordList.length){
    var j = 0;
    while((j<(wordList[i].length/2))){
      if (wordList[i][j]==wordList[i][-j]){
        flag = 1;
      } else {
        flag = 0;
      }
      j++;
    }
    if (flag === 1){
      console.log(wordList[i] + ' is a palindrome');
    } else {
      console.log(wordList[j] + 'is NOT a palindrome');
    }
    console.log('in here')
    i++;

}
