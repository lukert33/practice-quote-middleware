require ::File.expand_path('../environment',  __FILE__)

quote = Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, [APP_QUOTE] ] }

map '/' do
  run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ["Please specify quote path"] ] }
end

map '/quote' do
  run quote
end