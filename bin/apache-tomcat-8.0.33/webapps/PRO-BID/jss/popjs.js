
$(document).ready(function () {

    $('#fadeandscale').popup({
        pagecontainer: '.container',
        transition: 'all 0.5s'
    });

});
$(document).ready(function () {

    $('#fade').popup({
      transition: 'all 0.3s',
      scrolllock: true
    });
	$( '#tabs' ).tabs();
	$( '#tabs1' ).tabs();
});


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
function ajaxAlert(addr)
{
	var request = getRequestObject();
	request.onreadystatechange = 
    function() { showResponseAlert(request); };
	request.open("GET", "popret?id="+addr, true);
	request.send(null);
	
}
$(document).ready(function () {

    $('#slide').popup({
        focusdelay: 400,
        outline: true,
        vertical: 'top'
    });

});
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeIn(3000);
       
    });
});
function callbtn()
{
	$("#div1").fadeIn(3000);
}
function alr(str1,str2)
{
	var request = getRequestObject();
	request.onreadystatechange = 
    function() { showResponseAlert(request); };
	request.open("GET", "pop?id="+str1+"&id1="+str2, true);
	request.send(null);
}
function showResponseAlert(request) {
	
  if ((request.readyState == 4) &&
      (request.status == 200)) {
    document.getElementById("timeResult1").innerHTML = request.responseText;
	/*document.getElementById('bg_mask').style.visibility='visible';
    document.getElementById('frontlayer').style.visibility='visible';*/
	//alert(request.responseText);
  }
}

