$(document).on('turbolinks:load', function () {
 let films_arr = []

  $('.film_container').each(function(){
    films_arr.push($(this).attr('data-title'))
  })
  $("#film_search").autocomplete({
    source: films_arr,
    select: function( event, ui ) {
      $('.film_container').hide()
      $("div[data-title='" + ui.item.value +"']").show()
    }
  });

  $("#film_search").keyup(function(){
    if(!$(this).value){
      $('.film_container').show()
    }
  })

})