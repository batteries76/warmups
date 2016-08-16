console.log('geocoords');

var myResults = [ {name: "six pack of beer", location: {lat: 37.767182, long: -122.5}},
          {name: "whacky glasses", location: {lat: 37.767182, long: -122.51}},
          {name: "whiskey bottle", location: {lat: 37.767282, long: -122.49}},
          {name: "diving goggles", location: {lat: 37.770282, long: -122.503}},
          {name: "running shoes", location: {lat: 37.7669, long: -122.457}},
          {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}]

var current_loc = {name: "current loc", location: {lat: 37.76422, long: -122.474}}

var get_list = function(locs, curr) {

  console.log(locs);

  for(var loc in locs){
    console.log(loc.name);

  }
}

get_list(myResults[0], current_loc);
