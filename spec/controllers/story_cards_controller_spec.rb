require 'spec_helper'

describe StoryCardsController do

  def mock_story_card(stubs={})
    @mock_story_card ||= mock_model(StoryCard, stubs)
  end

  describe "GET index" do
    it "assigns all story_cards as @story_cards" do
      StoryCard.stub!(:find).with(:all).and_return([mock_story_card])
      get :index
      assigns[:story_cards].should == [mock_story_card]
    end
  end

  describe "GET show" do
    it "assigns the requested story_card as @story_card" do
      StoryCard.stub!(:find).with("37").and_return(mock_story_card)
      get :show, :id => "37"
      assigns[:story_card].should equal(mock_story_card)
    end
  end

  describe "GET new" do
    it "assigns a new story_card as @story_card" do
      StoryCard.stub!(:new).and_return(mock_story_card)
      get :new
      assigns[:story_card].should equal(mock_story_card)
    end
  end

  describe "GET edit" do
    it "assigns the requested story_card as @story_card" do
      StoryCard.stub!(:find).with("37").and_return(mock_story_card)
      get :edit, :id => "37"
      assigns[:story_card].should equal(mock_story_card)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created story_card as @story_card" do
        StoryCard.stub!(:new).with({'these' => 'params'}).and_return(mock_story_card(:save => true))
        post :create, :story_card => {:these => 'params'}
        assigns[:story_card].should equal(mock_story_card)
      end

      it "redirects to the index" do
        StoryCard.stub!(:new).and_return(mock_story_card(:save => true))
        post :create, :story_card => {}
        response.should redirect_to(story_cards_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved story_card as @story_card" do
        StoryCard.stub!(:new).with({'these' => 'params'}).and_return(mock_story_card(:save => false))
        post :create, :story_card => {:these => 'params'}
        assigns[:story_card].should equal(mock_story_card)
      end

      it "re-renders the 'new' template" do
        StoryCard.stub!(:new).and_return(mock_story_card(:save => false))
        post :create, :story_card => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested story_card" do
        StoryCard.should_receive(:find).with("37").and_return(mock_story_card)
        mock_story_card.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :story_card => {:these => 'params'}
      end

      it "assigns the requested story_card as @story_card" do
        StoryCard.stub!(:find).and_return(mock_story_card(:update_attributes => true))
        put :update, :id => "1"
        assigns[:story_card].should equal(mock_story_card)
      end

      it "redirects to the story_card" do
        StoryCard.stub!(:find).and_return(mock_story_card(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(story_card_url(mock_story_card))
      end
    end

    describe "with invalid params" do
      it "updates the requested story_card" do
        StoryCard.should_receive(:find).with("37").and_return(mock_story_card)
        mock_story_card.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :story_card => {:these => 'params'}
      end

      it "assigns the story_card as @story_card" do
        StoryCard.stub!(:find).and_return(mock_story_card(:update_attributes => false))
        put :update, :id => "1"
        assigns[:story_card].should equal(mock_story_card)
      end

      it "re-renders the 'edit' template" do
        StoryCard.stub!(:find).and_return(mock_story_card(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested story_card" do
      StoryCard.should_receive(:find).with("37").and_return(mock_story_card)
      mock_story_card.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the story_cards list" do
      StoryCard.stub!(:find).and_return(mock_story_card(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(story_cards_url)
    end
  end

end
