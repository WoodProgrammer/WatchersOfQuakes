require 'benchmark'


Benchmark.bm do |x|
  puts "1."  
  x.report { system("ruby parser.rb")}
  puts "2"
  x.report { system("ruby city_detection.rb")}
  puts "3."
  x.report { system("ruby distance.rb")}
end
