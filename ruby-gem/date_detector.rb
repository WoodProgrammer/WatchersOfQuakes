require 'date'
months=["January","February","March","April","May","June","July","August","September","October","November","December"]
x=Date._parse('2001-02-03')
puts months[x[:mon]-1]
