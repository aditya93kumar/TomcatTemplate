
            function showFrontLayer() {
                document.getElementById('bg_mask').style.visibility='visible';
                document.getElementById('frontlayer').style.visibility='visible';
            }
            function hideFrontLayer() {
                document.getElementById('bg_mask').style.visibility='hidden';
                document.getElementById('frontlayer').style.visibility='hidden';
            }
			function getRequestObject() {
  if (window.XMLHttpRequest) {
    return(new XMLHttpRequest());
  } else if (window.ActiveXObject) { 
    return(new ActiveXObject("Microsoft.XMLHTTP"));
  } else {
    // Don't throw Error: this part is for very old browsers,
    // and Error was implemented starting in JavaScript 1.5.
    return(null); 
  }
}

// Make an HTTP request to the given address. 
// Display result in an alert box.

function ajaxAlert(id) {
  var request = getRequestObject();
  request.onreadystatechange = 
    function() { showResponseAlert(request); };
  request.open("GET", "showTime", true);
  request.send(null);
}

// Put response text in alert box.

function showResponseAlert(request) {
	
  if ((request.readyState == 4) &&
      (request.status == 200)) {
    /*document.getElementById("timeResult1").innerHTML = request.responseText;
	document.getElementById('bg_mask').style.visibility='visible';
    document.getElementById('frontlayer').style.visibility='visible';*/
	alert(request.responseText);
  }
}
        