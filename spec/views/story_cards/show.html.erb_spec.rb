require 'spec_helper'

describe "/story_cards/show.html.erb" do
  include StoryCardsHelper
  before(:each) do
    assigns[:story_card] = @story_card = stub_model(StoryCard,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ description/)
  end
end
