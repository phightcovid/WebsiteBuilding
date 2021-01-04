/*alert("This is an alert I created in index.js!"): */ 



/* START: 3rd clickable dropdown button javascript. Don't actually have to use, there is already javascript in the html ONCHANGE element  */ 

$("select").on("click" , function() {
  
  $(this).parent(".custom-select").toggleClass("open");
  
});

$(document).mouseup(function (e)
{
    var container = $(".custom-select");

    if (container.has(e.target).length === 0)
    {
        container.removeClass("open");
    }
});


$("select").on("change" , function() {
  
  var selection = $(this).find("option:selected").text(),
      labelFor = $(this).attr("id"),
      label = $("[for='" + labelFor + "']");
    
  label.find(".selection-choice").html(selection);
    
});   


 /* END: 3rd clickable dropdown button javascript  */ 