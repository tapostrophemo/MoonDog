require File.dirname(__FILE__) + '/../spec_helper'
 
describe UserSessionsController do

  
  describe "handling GET /user_session/new" do
    before(:each) do
      @user_session = mock_model(UserSession)
      UserSession.stub!(:new).and_return(@user_session)
    end
    
    it "should render new template" do
      get :new
      response.should render_template(:new)
    end
  end
  
  describe "Handlig POST user_session" do
    before(:each) do
      @user_session = mock_model(UserSession, :to_param => "1")
      UserSession.stub!(:new).and_return(@user_session)
    end
    
    describe "with successful save" do
      def do_post
        @user_session.should_receive(:save).and_return(true)
        post :create, :user_session => {}
      end

      it "should create a new user_session" do
        UserSession.should_receive(:new).with({}).and_return(@user_session)
        do_post
      end
      
      it "should redirect when model is valid" do
        do_post
        response.should redirect_to(root_url)
      end
    end

    describe "with failed save" do
      def do_post
        @user_session.should_receive(:save).and_return(false)
        post :create, :user_session => {}
      end

      it "should render new template when model is invalid" do
        do_post
        response.should render_template(:new)
      end
    end
  end  

  describe "handling DELETE /user_session/1" do
    before(:each) do
      @user_session = mock_model(UserSession, :destroy => true)
      UserSession.stub!(:find).and_return(@user_session)
    end
  
    def do_delete
      delete :destroy, :id => "1"
    end

    it "should destroy model and redirect to index action" do
      @user_session.should_receive(:destroy)
      delete :destroy, :id => @user_session
      response.should redirect_to(root_url)
    end
  end
end
