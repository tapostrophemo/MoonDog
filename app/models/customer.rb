class Customer < ActiveRecord::Base
  validates_presence_of :last_name, :city, :state
end
