require 'rails_helper'

describe "author index page" do
  it "should render withput an error" do
    @alan=FactoryBot.create :author
    visit authors_path

    expect(page).to have_link 'neuen Autor erstellen', href: new_author_path
    expect(page).to have_link @alan.name, href: author_path(@alan)
  end

end
