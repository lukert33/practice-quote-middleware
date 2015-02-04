require "rspec"
require_relative "../app/quoter.rb"

describe "Quoter" do

  let(:ricky_quoter){Quoter.new("/fixtures/rickgervais.txt")}

  it "takes a file path as an argument to initialize" do
    expect(ricky_quoter.method(:initialize).arity).to eq 1
  end

  it "has an each method" do
    expect(ricky_quoter.methods.include?(:each)).to be true
  end

  it "has a first element that equals the first quote in our library" do
    expect(ricky_quoter.first).to be_a String
    expect(ricky_quoter.first).to eq "Being on the edge isnâ€™t as safe, but the view is better."
  end

  it "has a last element that equals the last quote in our library" do
    expect(ricky_quoter.last).to be_a String
    expect(ricky_quoter.last).to eq "We Shouldn't even need the word 'atheism'. If people didn't invent ridiculous imaginary Gods, rational people wouldn't have to deny them."
  end

end