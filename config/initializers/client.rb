require 'mysql2'
client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
# Use  :socket => "/tmp/mysql/mysql.sock" for socket settings. "/tmp/mysql/mysql.sock" is default
