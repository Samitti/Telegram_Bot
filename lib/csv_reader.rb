require 'csv'
require 'open-uri'

def csv_parser file_path
    @result = []
    lines = File.read(file_path).split(/\n/).map do |line|
       @result << line.split(',')
       
    end
    def find_nation(nation)
        y = 1
        while y < @result.length
            if @result[y][0] == nation
                puts "#{@result[0][1]} :#{@result[y][1]}"              
                puts "#{@result[0][0]} :#{@result[y][0]}"                
                puts "#{@result[0][4]} :#{@result[y][4]}"
            end
            y += 1
        end       
    end
end

require 'open-uri'

content = open('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/web-data/data/cases_country.csv').read
File.write("./lib/temp.csv", content)
csv_parser "./lib/temp.csv"
find_nation('Eritrea')
