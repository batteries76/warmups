console.log('granny');

var granny = function(string) {

  var randYear = (Math.floor(Math.random()*21))+1930;
//  console.log(randYear);

  if(string !== string.toUpperCase()){
    console.log('NO, NOT SINCE ' + randYear + '!');
  }
  else if(string === 'BYE'){
    console.log("What's that honey, I didn't hear you..");
  }
  else {
    console.log("SPEAK UP SONNY JIM!");
  }
}
