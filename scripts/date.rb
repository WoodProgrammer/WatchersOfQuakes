require "date"
require 'mysql'
con = Mysql.new 'localhost', 'root', 'password', 'tarih_development'
x=Date.new(2012,07,07)
con.query("INSERT INTO hebels(hebele,hubele,created_at,updated_at) VALUES('Nice','Date Implementation','#{x}','#{x}')")
