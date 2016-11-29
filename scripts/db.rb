require 'mysql2'
require 'date'
class DB
  def look_date(fname)
    client = Mysql2::Client.new(:host=>"localhost",:username=>"root",:password=>"abcde",:database=>"watchers_of_quakes_development")
    date_file=File.open(fname,"r+")
    date_file.each do |line|
    if line.include?("REVIZE01") || line.include?("REVIZE02") || line.include?("REVIZE03")
    else
      begin
        client.query("INSERT INTO quakes(date,longitude,latitude) VALUES('#{line[0,line.length-119]}',12.2,12.2)")
      rescue
        puts "SOME REGEX ERROR"
      end
    end
    if line.include?("</pre>")
      break;
    end
  end
  date_file.close
  end
end
#REVIZE ERROR.
