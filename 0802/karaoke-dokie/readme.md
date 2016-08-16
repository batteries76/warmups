## Karaoke-dokie!

Today we're going to practice using jQuery to manipulate the DOM by building an old-school Karaoke screen!

### Part 1
Create your boilerplate application in the directory for today's morning exercise. You will need:
* `index.html`
  * Include jQuery, a script, and a CSS file.
  * Add an unordered list with the class `song` to the body.
* `css/styles.css`
* `javascripts/scripts.js`

Include a helpful `H1` and `console.log` so you know your files are loaded up properly. Open `index.html` in Chrome to make sure!

### Part 2
* Hit up http://www.azlyrics.com/ to get the lyrics from your favorite karaoke song.
* In `scripts.js` store your song in an array, with each line of the song as an element in the array.
* Write a function called `renderLyrics` that will show each line of the song to the user after a specified period of time. Remember `setInterval`?!
  * Log the lyrics to the console first.
  * Once that's working successfully, refactor your code to display the lines of your song using jQuery.
* `renderLyrics` should be called when the document is ready.

**But how can we tell `setInterval` to stop when the song is over?!?!**

PS—Your song lyrics *do not* need to render in exact time compared to the *actual* song! You can render the lyrics every 2.5 seconds.

### Part 3
* Remember what karaoke screens look like?
* Add some snazzy CSS or jQuery animations!
