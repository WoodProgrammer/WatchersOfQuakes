class Quake
  class <<self
    def arrangement(x_files)
      temp_file=File.open(x_files,"r")
      main_file=File.open("quake_data","w")
      i=0
      temp_file.each do |line|
        if line.include?("<pre>")
          i+=1
        end
        if i==1
          main_file.puts line
        end
      end
      
    end#end_of_arrangment.

  end
end

fname="helo.txt"
fops = File.open(fname,"w")
fops.print system("curl http://www.koeri.boun.edu.tr/scripts/lst6.asp > #{fname}")
Quake.arrangement(fname)
