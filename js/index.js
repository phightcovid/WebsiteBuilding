/*alert("This is an alert I created in index.js!");

/***** Beginning of 1st dropdown button javascript *********/

/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
} 
/******** End of 1st dropdown button javascript ********/ 

/******** Start: 2nd dropdown button javascript ********/


        function setIframeSource() {
            // behavior of myIframe
            var theSelect = document.getElementById('location');
            var theIframe = document.getElementById('myIframe');
            var theUrl;
            theUrl = theSelect.options[theSelect.selectedIndex].value;
            theIframe.src = theUrl;

            // behavior of myIframe2
            var theSelect2 = document.getElementById('location');
            var theIframe2 = document.getElementById('myIframe2');
            var theUrl2;
            theUrl2 = theSelect2.options[theSelect2.selectedIndex].value;
            theIframe2.src = theUrl2;

            // behavior of myIframe3
            var theSelect3 = document.getElementById('location');
            var theIframe3 = document.getElementById('myIframe3');
            var theUrl3;
            theUrl3 = theSelect3.options[theSelect3.selectedIndex].value;
            theIframe3.src = theUrl3;
        }
   
/******** End: 2nd dropdown button javascript ********/ 