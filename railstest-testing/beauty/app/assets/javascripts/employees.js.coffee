# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#employee_emp_dob").datepicker
  	dateFormat: 'yy-mm-dd'

jQuery ->
	Morris.Donut
	  element: 'genders_chart'
	  data: [
	    {label: "Males", value: 70}
	    {label: "Females", value: 27}
	    {label: "Others", value: 3}
	  ]