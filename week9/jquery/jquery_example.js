

// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
"https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

bodyElement = $('body')
h1Element = $('#logo')

h1Element.css({'color':'green'})
h1Element.css({'border':'2px dashed'})
//h1Element.css({'visibility':'hidden'})
h1Element.html("Chorus Frogs 2016")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

 $('img').on('mouseenter', function(){
    //e.preventDefault()
    $(this).attr('src', 'http://www.adoptapond.info/guide_images/Chorus%20Frog.jpg')
  })

 $('img').on('mouseleave', function(){
    //e.preventDefault()
    $(this).attr('src', '../dbc_logo.png')
  })
//RELEASE 5: Experiment on your own


h1Element.on('mouseover', function(e){
 e.preventDefault(
     h1Element.animate({'opacity': '0.25'}, 1500)
 )
})
h1Element.on('mouseout', function(e){
 e.preventDefault()
 h1Element.css({'opacity' : '1'})
})
})



// end of the document.ready function: do not remove or write DOM manipulation below this.
// Reflection

// What is jQuery?
// 	- jQuery is a Javascript library that allows you to manipulate the DOM, ie change the HTML, CSS and how they interact on the page when certain actions are performed like clicked on something or moving the mouse over something. Or simply when the page itself loads.
// What does jQuery do for you?
// 	-you can modify html tags, change text, add features or css.
// What did you learn about the DOM while working on this challenge?
// 	-the DOM is 
// 	-
// 	-
