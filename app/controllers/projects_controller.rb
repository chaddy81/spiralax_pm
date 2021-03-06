class ProjectsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :get_user, :only => [:index,:new,:edit,:manage]
  before_filter :accessible_roles, :only => [:new, :edit, :show, :update, :create, :manage]
  load_and_authorize_resource :only => [:show,:new,:destroy,:edit,:update, :create, :manage]
  
  
  # GET /projects
  # GET /projects.xml
  def index
    @projects = Project.all
    @current_project = session[:current_project]
    if @current_project.nil?
      @discuss = Discussion.find(:all, :limit => 5, :order => "created_at asc")
    else
      @project = Project.find(session[:current_project])
      @discussions = @project.discussions.all
    end       
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = Project.find(params[:id])
    session[:project_id] = @project
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @user = current_user
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = Project.new(params[:project])
    
    respond_to do |format|
      if @project.save
        latest = Project.last.id
        Ownership.create(:user_id => current_user.id, :project_id => latest, :role_id => 1)
        format.html { redirect_to(projects_path, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to(@project, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def select
    @project_stuff = Project.find(params[:project_stuff]).id
    session[:current_project] = @project_stuff
    
    respond_to do |format|
      format.html {redirect_to(root_path)}
      format.xml  { render :xml => @project }
    end
  end
  
  def manage
    @projects = User.find(current_user.id).projects
    
      respond_to do |format|
      format.html
      format.xml  { render :xml => @projects }
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(projects_manage_url) }
      format.xml  { head :ok }
    end
  end
end
