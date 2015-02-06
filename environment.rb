require "pathname"

APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))

Dir[APP_ROOT.join('app', '*.rb')].each { |file| load file }
solar_system = Dir[APP_ROOT.join('spec', 'fixtures', 'planets', '*.txt')].sample

PLANET_TITLE = Quoter.new(solar_system).random_quote
RICKY_QUOTE = Quoter.new("spec/fixtures/rickygervais.txt").random_quote