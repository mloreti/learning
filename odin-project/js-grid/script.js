$( document ).ready(function() {
  var width = 500;
  $('#grid').css('width', width);

  var gridSize = askSize();

  function askSize() {
    var num = prompt("What size grid would you like?");
    while(isNaN(num)){
      num = prompt("Please enter a number");
    }
    if(num > 100){
      num = prompt("Please enter a number smaller than or equal to 100")
    }
    createGrid(num);
    return num;
  }

  function createGrid(size) {
    var squared = size * size;
    for(var i = 0; i < squared; i++){
      var square = $("<div class='square'></div>");
      $('#grid').append(square);
    }
    $('.square').css('width', width/size + 'px');
    $('.square').css('height', width/size + 'px');
  }//End createGrid

  // Fill square
  $('#grid').on('mouseenter', '.square', function() {
    $(this).addClass('blackSquare');
  });
  //Clear current grid
  $('.clear').on('click', function(){
    $('#grid').find('.square').removeClass('blackSquare');
  });
  // Set up New Grid
  $('.new').on('click', function(){
    $('#grid').find('.square').remove();
    askSize();
  });
});
