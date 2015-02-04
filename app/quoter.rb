class Quoter

  attr_reader :quotes

  def initialize(file_path)
    quotes = array_of_lines(file_path)
    @quotes = no_linebreaks(quotes)
  end


  private
  def no_linebreaks(string_array)
    string_array.map{|str| str.gsub(/\n+/, "")}
  end

  def array_of_lines(file_path)
    output = []
    file = File.open(APP_ROOT + file_path, "r")
    IO.readlines(file).each{|line| output << line }
    output
  end

end