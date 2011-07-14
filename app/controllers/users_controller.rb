class UsersController < ApplicationController
  before_filter :get_user
  before_filter :accessible_roles
  load_and_authorize_resource
  
  # GET /to_dos
  # GET /to_dos.xml
  def index
    
    @users = User.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
end
