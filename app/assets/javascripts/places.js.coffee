# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#place_category_id').parent().hide()
  categories = $('#place_category_id').html()
  $('#place_theme_id').change ->
    theme = $('#place_theme_id :selected').text()
    escaped_theme = theme.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(categories).filter("optgroup[label='#{escaped_theme}']").html()
    if options
      $('#place_category_id').html(options)
      $('#place_category_id').parent().show()
    else
      $('#place_category_id').empty()
      $('#place_category_id').parent().hide()
      return