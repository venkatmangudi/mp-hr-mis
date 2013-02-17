# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#posting_posting_from").datepicker
  	dateFormat: 'dd-mm-yy'

jQuery ->
  $("#posting_posting_to").datepicker
  	 dateFormat: 'D, dd M yy' 
