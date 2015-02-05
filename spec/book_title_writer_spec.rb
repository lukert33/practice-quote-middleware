require "spec_helper"

describe "BookTitleWriter" do

  it "is a module" do
    expect(BookTitleWriter).to be_a Module
  end

  it "has a method for writing titles to a file" do
    expect(BookTitleWriter.methods.include?(:write_titles_about)).to be true
  end

end