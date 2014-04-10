# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

changeBackGroundImage = (element,index) ->
  element.style.backgroundImage = "url(./images/" + index + ".jpg)"

i = 1
$ ->
  $("div[data-pre]").click ->
    i++
    i = 1 if i > 4
    changeBackGroundImage(indexCover,i)
    return
  $("div[data-next]").click ->
    i--
    i = 4 if i < 1
    changeBackGroundImage(indexCover,i)
    return
  #$('[data-btntype]').onclick ->
  #  $this.data("data-btntype")
return
