require ::File.expand_path('../environment',  __FILE__)

quote = Proc.new { |env| ['200', {'Content-Type' => 'text/plain'}, [RICKY_QUOTE] ] }

planet_book = Proc.new { |env| ['200', {'Content-Type' => 'text/plain'}, [PLANET_TITLE] ] }

map '/' do
  run Proc.new { |env| ['303', {'Content-Type' => 'text/plain'}, ["GET Path error: Please specify quote path"] ] }
end

map '/quote' do
  run quote
end

map '/planet_book' do
  run planet_book
end