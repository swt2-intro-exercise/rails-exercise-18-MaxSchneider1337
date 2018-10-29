require 'rails_helper'

describe "Author edit path" do

  it "should render" do
    @alan=FactoryBot.create :author
    visit edit_author_path(@alan)
  end

end
