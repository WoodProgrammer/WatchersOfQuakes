require 'mysql2'
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"root",:database=>"quakes", :socket =>"/tmp/mysql/mysql.sock")
