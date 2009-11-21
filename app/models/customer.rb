class Customer < ActiveRecord::Base	
  STATUS_VALUES = {
	1 => "Email",
	2 => "Phone"
  }
  
  validates_presence_of :last_name, :city, :state, :email, :phone
  validates_format_of     :email,
                        :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message    => 'Email must be valid',
  			:allow_blank => true
  validates_inclusion_of :contact_method, :in => STATUS_VALUES.keys
end
