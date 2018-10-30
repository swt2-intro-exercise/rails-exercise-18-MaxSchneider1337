require 'rails_helper'

describe 'paper details screen' do

  it 'should show authors' do
    @alan = FactoryBot.create :author
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)

    expect(page).to have_text(@alan.name)
  end 
end
