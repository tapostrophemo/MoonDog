require 'spec_helper'

describe "/story_cards/new.html.erb" do
  include StoryCardsHelper

  before(:each) do
    assigns[:story_card] = stub_model(StoryCard,
      :new_record? => true,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders new story_card form" do
    render

    response.should have_tag("form[action=?][method=post]", story_cards_path) do
      with_tag("input#story_card_title[name=?]", "story_card[title]")
      with_tag("input#story_card_description[name=?]", "story_card[description]")
    end
  end
end
