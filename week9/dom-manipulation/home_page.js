// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

	document.getElementById("release-0").className = "done";


// Release 1:
  	
    document.getElementById("release-1").style.display = "none";
   



// Release 2:

	 
    document.getElementsByTagName('h1')[0].text = "I completed release 2.";
   


// Release 3:

    document.getElementById("release-3").style.backgroundColor = "955251";
  
    



// Release 4:

  var x = document.getElementsByClassName("release-4");
    for (var i = 0; i< x.length; i++){
       x[i].style.fontSize = '2em';
   }
  



// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


//Reflection:

// What did you learn about the DOM?
//	-HAH. I still have not really learned enough to explain what the DOM is. I can tell you in the most elementary(#NPI) fashion how to change html and css objects using JS by linking the html file to a JS file. which is exactly what we did.
//  - Why was the script link on the last line of the body of the html, all other examples I saw online had the link in the head. I think this challenge would have been more clear and straightforward if that link wasn't provided and part of release 0 was to link the files ourselves. 

// What are some useful methods to use to manipulate the DOM?
//		getElementBy.... (Id,TagName, ClassName) is definitely the most useful as it allows you to identify which elements you are accessing and acting on.





