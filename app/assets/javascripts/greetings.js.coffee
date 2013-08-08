# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready -> 
  $(document).on 'mouseenter', 'li.topitem', (e) ->
    $(e.currentTarget).children('ul').slideDown('fast')

  $(document).on 'mouseleave', 'ul.dropper', (e) ->
    $(e.currentTarget).slideUp('fast')