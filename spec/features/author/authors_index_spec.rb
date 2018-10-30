require 'rails_helper'

describe "author index page" do
  it "should render withput an error" do
    visit authors_path
  end

  it "should have a new button and a author table" do
    @alan=FactoryBot.create :author
    visit authors_path

    expect(page).to have_link 'neuen Autor erstellen', href: new_author_path
    expect(page).to have_link @alan.name, href: author_path(@alan)
    expect(page).to have_link @alan.homepage, href: @alan.homepage
    expect(page).to have_link 'edit', href: edit_author_path(@alan)
    expect(page).to have_link 'delete', href: author_path(@alan)

  end

end
