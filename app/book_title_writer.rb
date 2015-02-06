require 'httparty'
#take a keyword, write a file of all titles and subtitle
#of Google books that match

module BookTitleWriter

  def self.write_titles_about(keyword, filepath)
    list = get_title_list(keyword)
    write_list_to_file(list, filepath)
  end

  def self.titleize(book_object)
    title_string = book_object["title"]
    title_string += ": #{book_object['subtitle']}" if book_object["subtitle"]
    title_string += " by #{book_object['authors'].first}" if book_object["authors"]
    title_string
  end

  def self.get_title_list(keyword)
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=#{keyword}")
    volumes = response["items"].map{|item| item["volumeInfo"]}

    output = []
    volumes.each {|vol| output << self.titleize(vol)}
    output
  end

  def self.write_list_to_file(array, filepath)
    IO.write(filepath, array.join("\n"))
  end
end