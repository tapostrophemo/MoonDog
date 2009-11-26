require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  before(:each) do
    salt = Authlogic::Random.hex_token
    @valid_attributes = {
      :username => "username",
      :email => "john.doe@gmail.com",
      :password => "abcdefg",
      :password_confirmation => "abcdefg",
     }
  end
  
  before(:each) do
    @user = User.new
    @user.attributes = @valid_attributes
  end

   it "should be valid" do
    @user.should be_valid
  end

end
