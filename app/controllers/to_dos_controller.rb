class ToDosController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :get_user
  before_filter :accessible_roles
  load_and_authorize_resource

  @priority = {'high' => 1, 'medium' => 2, 'low' => 3}

  # GET /to_dos
  # GET /to_dos.xml
  def index
    @project = Project.find(params[:project_id])
    @to_dos = @project.to_dos.all
    
    respond_to do |format|
      # format.html # index.html.erb
      # format.xml  { render :xml => @to_dos }
      render :json => @to_dos
    end
  end
 
  # GET /to_dos/1
  # GET /to_dos/1.xml
  def show
    @project = Project.find(params[:project_id])
    @to_do = @project.to_dos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      # format.xml  { render :xml => @to_do }
      render :json => @project.to_dos.find(params[:id])
    end
  end

  # GET /to_dos/new
  # GET /to_dos/new.xml
  def new
    @project = Project.find(session[:current_project])
    @to_do = @project.to_dos.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @to_do }
    end
  end

  # GET /to_dos/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @to_do = @projects.to_dos.find(params[:id])
  end

  # POST /to_dos
  # POST /to_dos.xml
  def create
    @project = Project.find(session[:current_project])
    @to_do = @project.to_dos.new(params[:to_do])
    
    respond_to do |format|
      if @to_do.save
        # format.html { redirect_to(project_to_do_path(@project, @to_do), :notice => 'To do was successfully created.') }
        #format.html { redirect_to(@to_do, :notice => 'To do was successfully created.') }
        #format.xml  { render :xml => @to_do, :status => :created, :location => @to_do }
        render :json => @to_do
      else
        
        render :action => 'new'

        #format.html { render :action => "new" }
        #format.xml  { render :xml => @to_do.errors, :status => :unprocessable_entity }
        # render :json => @to_do
      end
    end
  end

  # PUT /to_dos/1
  # PUT /to_dos/1.xml
  def update
    @project = Project.find(params[:project_id])
    @to_do = @project.to_dos.find(params[:id])

    respond_to do |format|
      if @to_do.update_attributes(params[:to_do])
        # format.html { redirect_to(@to_do, :notice => 'To do was successfully updated.') }
        # format.xml  { head :ok }
        render :json => @to_do
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @to_do.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /to_dos/1
  # DELETE /to_dos/1.xml
  def destroy
    @project = Project.find(params[:project_id])
    @to_do = @project.to_dos.find(params[:id])
    @to_do.destroy

    respond_to do |format|
      # format.html { redirect_to(project_to_dos_url) }
      # format.xml  { head :ok }
      render :json => @to_do
    end
  end
end
