function isInt(n){
    return Number(n) === n && n % 1 === 0;
}
function generateTableHTML(size){
  if(isInt(size)){
    var gridContents = '<div class="grid-row">';
    for(a=1;a<=size;a++){
      for(i=1;i<=size;i++){
        gridContents = gridContents.concat('<div class="grid-square"></div>')
      }
      if(size!=a){
        gridContents = gridContents.concat("</div><div class='grid-row'>")
      }
      else{
        gridContents = gridContents.concat("</div>")
      }
    }
    return gridContents;
  }
  else {
    alert("Not Integer");
  }
}
function generateSize(size){
  return 800/size;
}
function randomColor(){
  var array = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'];
  var color = "#"
  for(i=1;i<=6;i++){
    color = color.concat(array[Math.floor(Math.random() *array.length)])
  }
  return color;
}
function darkenColor(color){
  color = color.replace("rgb(","");
  color = color.replace(")","");
  var array = color.split(", ");
  var output = "rgb(";
  for(i=0;i<array.length;i++){
    array[i] = parseInt(array[i]) - 25;
    if(i!=2){
      output = output.concat(array[i]+",");
    }
    else{
      output = output.concat(array[i]+")");
    }
  }
  return output;
}
$(document).ready(function(){
  $('#etch-container').append(generateTableHTML(16))
  $('#GenerateTable').click(function(){
    $('#etch-container').empty();
    var $size = prompt("What size?");
    $('#etch-container').append(generateTableHTML(parseInt($size)));
    $(".grid-square").css("height",generateSize($size));
    $(".grid-row").css("height",generateSize($size));
    $(".grid-square").css("width",generateSize($size))
    if($("#dark").is(":checked")){
      $(".grid-square").mouseenter(function(){
      $(this).css("background-color",darkenColor($(this).css("background-color")));
      });
    }
    else {
      $(".grid-square").mouseenter(function(){
      $(this).css("background-color",randomColor());
      });
    }
  })
  if($("#dark").is(":checked")){
      $(".grid-square").mouseenter(function(){
      $(this).css("background-color",darkenColor($(this).css("background-color")));
      });
    }
    else {
      $(".grid-square").mouseenter(function(){
      $(this).css("background-color",randomColor());
      });
    }
    $("#dark").change(function(){
      alert("To use this mode, generate a new table.");
    })
});
