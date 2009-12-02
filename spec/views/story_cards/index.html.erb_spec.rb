require 'spec_helper'

describe "/story_cards/index.html.erb" do
  include StoryCardsHelper

  before(:each) do
    assigns[:story_cards] = [
      stub_model(StoryCard,
        :title => "value for title",
        :description => "value for description"
      ),
      stub_model(StoryCard,
        :title => "value for title",
        :description => "value for description"
      )
    ]
  end

  it "renders a list of story_cards" do
    render
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end
