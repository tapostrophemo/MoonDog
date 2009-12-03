require 'spec_helper'

describe StoryCard do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description"
    }

    @story_card = StoryCard.new
    @story_card.attributes = @valid_attributes
  end

  it "should create a new instance given valid attributes" do
    StoryCard.create!(@valid_attributes)
  end

  it "should be valid" do
    @story_card.should be_valid
  end

  describe "validations" do
    it "should require title" do
      @story_card.title = ""
      @story_card.should have(1).error_on(:title)
    end

    it "should require description" do
      @story_card.description = ""
      @story_card.should have(1).error_on(:description)
    end
  end

end
