console.log('Karaoke!');

var render = function() {
  lyrics = ['Where to go I had no idea', '26.10 was the price to pay', 'A messed up kid with no ideals at all', 'I thought those 26.10 I shouldn\'t give\'em away', 'I remember this young guy died and I took his part', 'He got far too many stitches on his pretty face', 'Long time to see but I always thought us two would be serious', 'I was looking around town, thinking the same as you'];

    setInterval(renderer(lyrics[i]), 3000);
  }
}

var renderer = function(str){
    setTimeout(function(){}, 3000);
    console.log(str);
}

render();
