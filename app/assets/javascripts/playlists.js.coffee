$(document).on 'turbolinks:load', ->
  $('#playlist_category_id').parent().hide()
  categories = $('#playlist_category_id').html()
  $('#playlist_theme_id').change ->
    theme = $('#playlist_theme_id :selected').text()
    escaped_theme = theme.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(categories).filter("optgroup[label='#{escaped_theme}']").html()
    if options
      $('#playlist_category_id').html(options)
      $('#playlist_category_id').parent().show()
    else
      $('#playlist_category_id').empty()
      $('#playlist_category_id').parent().hide()
      return
