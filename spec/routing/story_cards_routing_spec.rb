require 'spec_helper'

describe StoryCardsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/story_cards" }.should route_to(:controller => "story_cards", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/story_cards/new" }.should route_to(:controller => "story_cards", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/story_cards/1" }.should route_to(:controller => "story_cards", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/story_cards/1/edit" }.should route_to(:controller => "story_cards", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/story_cards" }.should route_to(:controller => "story_cards", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/story_cards/1" }.should route_to(:controller => "story_cards", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/story_cards/1" }.should route_to(:controller => "story_cards", :action => "destroy", :id => "1") 
    end
  end
end
