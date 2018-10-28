require 'rails_helper'

describe "author details page", type: :feature do

  it 'should render with no error' do
    @alan=FactoryBot.create :author

    visit author_path(@alan)
    expect(page).to have_text(@alan.name)
    expect(page).to have_text(@alan.homepage)
  end
end
