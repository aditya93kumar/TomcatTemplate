$(document).ready(function() {

        $(function() {
                $("#search").autocomplete({     
                source : function(request, response) {
                $.ajax({
                        url : "SearchController",
                        type : "GET",
                        data : {
                                term : request.term
                        },
                        dataType : "json",
                        success : function(data) {
                                response(data);
                        }
                });
        }
});
});
});

function ajaxAlert(id)
{

var request = getRequestObject();
request.onreadystatechange = 
    function() { showResponseAlert(request); };
  request.open("GET", "proj?id="+id, true);
  request.send(null);

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
function showResponseAlert(request) {
	
  if ((request.readyState == 4) &&
      (request.status == 200)) {
    document.getElementById("timeResult1").innerHTML = request.responseText;
	/*document.getElementById('bg_mask').style.visibility='visible';
    document.getElementById('frontlayer').style.visibility='visible';
	alert(request.responseText);*/
  }
}
function accept(uname)
{
	var request = getRequestObject();
request.onreadystatechange = 
    function() { showResponse(request); };
  request.open("GET", "decide?type=1&uname="+uname, true);
  request.send(null);
}

function reject(uname)
{

	var request = getRequestObject();
request.onreadystatechange = 
    function() { showResponse(request); };
  request.open("GET", "decide?type=2&uname="+uname, true);
  request.send(null);
}
function showResponse(request) {
	
  if ((request.readyState == 4) &&
      (request.status == 200)) {
    document.getElementById("timeResult2").innerHTML = request.responseText;
	
  }
}
function bid(pid,tid)
{

	var request = getRequestObject();
request.onreadystatechange = 
    function() { Response(request); };
  request.open("GET", "bid?pid="+pid+"&tid="+tid+"&type=1", true);
  request.send(null);
}
function bidre(pid,tid)
{

	var request = getRequestObject();
request.onreadystatechange = 
    function() { Response(request); };
  request.open("GET", "bid?pid="+pid+"&tid="+tid+"&type=2", true);
  request.send(null);
}
function Response(request) {
	
  if ((request.readyState == 4) &&
      (request.status == 200)) {
    document.getElementById("timeResult3").innerHTML = request.responseText;
	
  }
}