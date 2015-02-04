require "pathname"

APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))

Dir[APP_ROOT.join('app', '*.rb')].each { |file| load file }

APP_QUOTE = Quoter.new("spec/fixtures/rickygervais.txt").random_quote