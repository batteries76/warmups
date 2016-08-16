console.log('In app.js - golf');

var bobScore = [3, 2, 6, 11, 9, 2, 6, 9, 10];
var jimboScore = [5, 12, 9, 22, 13, 7, 16, 10, 11];
var fishScore = [2, 2, 4, 5, 4, 3, 6, 4, 1];
var parScore = [3, 4, 5, 5, 3, 3, 4, 3, 5];
var jimboTotal = 0;
var bobTotal = 0;
var parTotal = 0;
var fishTotal = 0;

for(i=0; i<9; i++) {
  bobTotal += bobScore[i];
  jimboTotal += jimboScore[i];
  parTotal += parScore[i];
  fishTotal += fishScore[i];
}

var fishPar = parTotal - fishTotal;
var jimboPar = jimboTotal - parTotal;
var bobPar = bobTotal - parTotal;

var fishCash = bobPar + jimboPar;

console.log("Bob's score was: " + bobTotal + ' which is ' + bobPar + ' over the card');
console.log("Jimbo's score was: " + jimboTotal + ' which is ' + jimboPar + ' over the card');
console.log("Fish's score was: " + fishTotal + ' which is ' + fishPar + ' under the card');
console.log("Par is: " + parTotal);

console.log("Fish made $" + fishCash);
