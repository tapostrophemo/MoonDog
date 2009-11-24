require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  before(:each) do
    salt = Authlogic::Random.hex_token
    @valid_attributes = {
      :username => "username",
      :email => "john.doe@gmail.com",
      :password => "abcdefg",
      :password_confirmation => "abcdefg",
      :password_salt =>  salt,
      :crypted_password => Authlogic::CryptoProviders::Sha512.encrypt("benrocks" + salt),
      :persistence_token =>  Authlogic::Random.hex_token
    }
  end
  
  before(:each) do
    @user = User.new
    @user.attributes = @valid_attributes
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end

  it "should be valid" do
    @user.should be_valid
  end

end
