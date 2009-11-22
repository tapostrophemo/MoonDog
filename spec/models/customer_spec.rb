require 'spec_helper'

describe Customer do
  before(:each) do
    @valid_attributes = {
      :company_name => "value for company_name",
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :address1 => "value for address1",
      :address2 => "value for address2",
      :city => "value for city",
      :state => "value for state",
      :zip => "value for zip",
      :email => "john.doe@gmail.com",
      :phone => "value for phone",
      :contact_method => 1
    }
  end

  before(:each) do
    @customer = Customer.new
    @customer.attributes = @valid_attributes
  end
  
  it "should create a new instance given valid attributes" do
    Customer.create!(@valid_attributes)
  end

  it "should be valid" do
    @customer.should be_valid
  end

  describe "validations" do
    it "should require last name" do
      @customer.last_name = ""
      @customer.should have(1).error_on(:last_name)
    end

    it "should require a city" do
      @customer.city = ""
      @customer.should have(1).error_on(:city)
    end

    it "should require a state" do
      @customer.state = ""
      @customer.should have(1).error_on(:state)
    end
    
    it "should require email" do
	@customer.email = ""
	@customer.should have(1).error_on(:email)
    end

    it "should verify email" do
	verify_email('john@gmail')
	verify_email('john')
	verify_email('@gmail.com')
    end

    it "should require phone number" do
	@customer.phone = ""
	@customer.should have(1).error_on(:phone)
    end

    def verify_email(email_input)
	@customer.email = email_input
	@customer.should have(1).error_on(:email)
	@customer.errors.on(:email).should == 'Email must be valid'
    end
  end
end
