$(document).on('turbolinks:load', function () {
 let films_arr = []
  //populate film array from div elements
  $('.film_container').each(function(){
    films_arr.push($(this).attr('data-title'))
  })

  //search function
  $("#film_search").autocomplete({
    source: films_arr,
    select: function( event, ui ) {
      $('.film_container').hide()
      $("div[data-title='" + ui.item.value +"']").show()
    }
  });

  //restore all films when search bar is blank
  $("#film_search").keyup(function(){
    if(!$(this).value){
      $('.film_container').show()
    }
  })

})