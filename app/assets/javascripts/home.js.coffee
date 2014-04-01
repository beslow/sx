# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
changeBackGroundPre = ->
  i++
  i = 1  if i > 4
  indexCover.style.backgroundImage = "url(./images/" + i + ".jpg)"
  return
changeBackGroundNext = ->
  i--
  i = 4  if i < 1
  indexCover.style.backgroundImage = "url(./images/" + i + ".jpg)"
  return
i = 1