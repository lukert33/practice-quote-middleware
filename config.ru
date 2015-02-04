require ::File.expand_path('../environment',  __FILE__)

run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, [APP_QUOTE] ] }