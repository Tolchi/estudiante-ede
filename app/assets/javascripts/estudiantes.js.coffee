# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$("#estudiante_trabaja").click ->
		if $("#estudiante_trabaja").length > 0
			$("#Empresa").toggle()
			$("#Universidad").toggle()
		else
			$("#Universidad").toggle()
			$("#Empresa").toggle()
		return

	return