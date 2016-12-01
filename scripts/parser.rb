require_relative "db"
class Quake
  class <<self
    def arrangement(x_files)
      temp_file=File.open(x_files,"rb")
      main_file=File.open("quake_data","w")
      i=0
      line_counter = 0
      temp_file.each do |line|
        if line.include?("<pre>")
          i+=1
        end
        if i==1
          if line_counter >= 7
            main_file.puts line
          end
        line_counter += 1
      end
    end
      temp_file.close
      main_file.close
    end#end_of_arrangment.
  end

end

fname="helo.txt"
fname2="quake_data"
fops = File.open(fname,"w")
fops.print system("curl http://www.koeri.boun.edu.tr/scripts/lst6.asp > #{fname}")
Quake.arrangement(fname)#singletone
reg=DB.new
reg.look_date(fname2)
