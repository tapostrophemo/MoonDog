class MainController < ApplicationController

  @signed_in = :false

  def index
    @signed_in = :true
    render :layout => "index"
  end

  def customer
  end

  def customer_account
  end

  def developer
  end

  def developer_account
  end

  def developer_projects
  end

end
