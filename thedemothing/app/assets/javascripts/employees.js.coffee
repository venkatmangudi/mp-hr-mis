# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.best_in_place').best_in_place()

jQuery ->
  $("#employee_emp_dob").datepicker
  	dateFormat: 'yy-mm-dd'
