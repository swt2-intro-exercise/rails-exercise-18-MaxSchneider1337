require 'rails_helper'

describe Author, type: :model do

  it "should have a first and second name and an homepage" do
    author = Author.new(first_name: 'Alan', last_name: 'Touring', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Touring')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it "should not be valid with empty last name" do
     author = Author.new(first_name: 'Alan', last_name: '  ', homepage: 'http://wikipedia.org/Alan_Turing')
     expect(author).to_not be_valid
  end

  it "should not be valid without last name" do
     author = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
     expect(author).to_not be_valid
  end

end
