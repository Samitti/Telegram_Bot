require 'csv'
require 'open-uri'

class SearchEngine
  def data_genrator
    content = open('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/web-data/data/cases_country.csv').read
    File.write('./lib/temp.csv', content)
    csv_parser './lib/temp.csv'
  end

  def csv_parser(file_path)
    @result = []
    File.read(file_path).split(/\n/).map do |line|
      @result << line.split(',')
    end
  end

  def find_nation(nation)
    data_genrator
    y = 1
    str_data = ''
    while y < @result.length
      if @result[y][0].downcase == nation
        str_data += "#{@result[0][1]} :#{@result[y][1]}\n#{@result[0][0]} :#{@result[y][0]}\n"
        str_data += "#{@result[0][4]} :#{@result[y][4]}\n#{@result[0][5]} :#{@result[y][5]}\n"
        str_data += "#{@result[0][6]} :#{@result[y][6]}\n#{@result[0][7]} :#{@result[y][7]}\n"
      end
      y += 1
    end
    str_data
  end
end
