require 'rails_helper'

RSpec.describe Paper, type: :model do

  it 'should not be valid without a title' do
    paper = Paper.new(title: '', venue: 'Potsdam', year: 2018)
    expect(paper).to_not be_valid
  end

  it 'should not be valid without a vnue' do
    paper = Paper.new(title: 'Sachen', venue: '', year: 2018)
    expect(paper).to_not be_valid
  end

  it 'should not be valid without a year' do
    paper = Paper.new(title: 'Sachen', venue: 'Potsdam')
    expect(paper).to_not be_valid
  end

end
