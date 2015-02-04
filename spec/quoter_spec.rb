require "spec_helper"

describe "Quoter" do

  let(:ricky_quoter){Quoter.new("spec/fixtures/rickygervais.txt")}

  it "takes a file path as an argument to initialize" do
    expect(ricky_quoter.method(:initialize).arity).to eq 1
  end

  it "has a quotes collection with an each method" do
    expect(ricky_quoter.quotes.methods.include?(:each)).to be true
  end

  it "quotes collection#first equals the first quote in our library" do
    expect(ricky_quoter.quotes.first).to be_a String
    expect(ricky_quoter.quotes.first).to eq "Being on the edge isnâ€™t as safe, but the view is better."
  end

  it "quotes collection#last equals the last quote in our library" do
    expect(ricky_quoter.quotes.last).to be_a String
    expect(ricky_quoter.quotes.last).to eq "We Shouldn't even need the word 'atheism'. If people didn't invent ridiculous imaginary Gods, rational people wouldn't have to deny them."

  end

end