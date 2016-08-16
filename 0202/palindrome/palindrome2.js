console.log('palindrome2');

var palindrome2 = function(string){
  var flag = 1;
  var str = string.split('').reverse();
  var str2 = string.split('');

  console.log(str);
  console.log(str2);

  if (str.join('') === str2.join('')) {
    console.log(string + ' is a palindrome');
  } else {
    console.log(string + ' is NOT a palindrome');
  }

}
