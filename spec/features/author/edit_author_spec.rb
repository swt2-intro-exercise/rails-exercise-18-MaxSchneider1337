require 'rails_helper'

describe "Author edit path" do

  it "should render" do
    @alan=FactoryBot.create :author
    visit edit_author_path(@alan)
  end

  it "should display author input fields" do
    @alan=FactoryBot.create :author
    visit edit_author_path(@alan)

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should save changes" do
    @alan=FactoryBot.create :author
    visit edit_author_path(@alan)

    page.fill_in 'author[last_name]', with: 'Dijkstra'
    page.fill_in 'author[first_name]', with: 'Edsger W.'
    page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'

    find('input[type="submit"]').click

    @alan.reload

    expect(@alan.first_name).to eq('Edsger W.')
    expect(@alan.last_name).to eq('Dijkstra')
    expect(@alan.homepage).to eq('https://de.wikipedia.org/wiki/Edsger_W._Dijkstra')
  end

end
