
class DB
  def look_date(fname)
    date_file=File.open(fname,"r+")
    date_file.each do |line|
      puts line[0,line.length-119]
      puts line[21,line.length-130]
      puts "----------------------"
  end
  date_file.close
end
end
#REVIZE ERROR.
