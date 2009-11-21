class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.integer :contact_method

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
