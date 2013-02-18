# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#employee_emp_dob").datepicker
  	dateFormat: 'yy-mm-dd'

jQuery ->
	Morris.Bar
	  element: 'genders_chart',
	  data: [
	    { y: '2006', a: 100, b: 90 }
	    { y: '2007', a: 75,  b: 65 }
	    { y: '2008', a: 50,  b: 40 }
	    { y: '2009', a: 75,  b: 65 }
	    { y: '2010', a: 50,  b: 40 }
	    { y: '2011', a: 75,  b: 65 }
	    { y: '2012', a: 100, b: 90 }
	  ]
	  xkey: 'y'
	  ykeys: ['a', 'b']
	  labels: ['Series A', 'Series B']