class MainController < ApplicationController

  @signed_in = :false
  @tabs = nil

  def index
    @signed_in = :true
  end

  def customer
    @tabs = {'customer_account' => 'Account', 'customer_backlog' => 'Backlog'}
  end

  def customer_account
  end

  def customer_backlog
  end

  def developer
  end

  def developer_account
  end

  def developer_projects
  end

end
