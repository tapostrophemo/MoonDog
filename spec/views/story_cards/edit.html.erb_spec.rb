require 'spec_helper'

describe "/story_cards/edit.html.erb" do
  include StoryCardsHelper

  before(:each) do
    assigns[:story_card] = @story_card = stub_model(StoryCard,
      :new_record? => false,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders the edit story_card form" do
    render

    response.should have_tag("form[action=#{story_card_path(@story_card)}][method=post]") do
      with_tag('input#story_card_title[name=?]', "story_card[title]")
      with_tag('input#story_card_description[name=?]', "story_card[description]")
    end
  end
end
