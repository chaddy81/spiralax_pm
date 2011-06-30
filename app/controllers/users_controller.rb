class UsersController < ApplicationController
  
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
