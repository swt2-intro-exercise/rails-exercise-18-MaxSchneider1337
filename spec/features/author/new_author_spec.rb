require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should display author input fields" do
    visit new_author_path

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should create a new author" do
    visit new_author_path
    page.fill_in 'author[last_name]', with: 'Dijkstra'
    page.fill_in 'author[first_name]', with: 'Edsger W.'
    page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'

    find('input[type="submit"]').click

  end

  it "should show the correct error" do
    visit new_author_path
    page.fill_in 'author[last_name]', with: ''
    page.fill_in 'author[first_name]', with: 'Edsger W.'
    page.fill_in 'author[homepage]', with: 'https://de.wikipedia.org/wiki/Edsger_W._Dijkstra'

    find('input[type="submit"]').click

    expect(page).to have_text("Fehler: Last name can't be blank")
  end

end
