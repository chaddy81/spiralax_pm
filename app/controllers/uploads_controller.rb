class UploadsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :get_user
  before_filter :accessible_roles
  load_and_authorize_resource
  
  # GET /Uploads
  # GET /Uploads.xml
  def index
    @project = Project.find(params[:project_id])
    @uploads = @project.uploads.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uploads }
    end
  end

  # GET /Uploads/1
  # GET /Uploads/1.xml
  def show
    @project = Project.find(params[:project_id])
    @upload = @project.uploads.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @upload }
    end
  end

  # GET /Uploads/new
  # GET /Uploads/new.xml
  def new
    @project = Project.find(params[:project_id])
    @upload = @project.uploads.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @upload }
    end
  end

  # GET /Uploads/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @upload = @project.uploads.find(params[:id])
  end

  # POST /Uploads
  # POST /Uploads.xml
  def create
    @project = Project.find(params[:project_id])
    @upload = @project.uploads.new(params[:upload])

    respond_to do |format|
      if @upload.save
        format.html { redirect_to(project_upload_path(@project, @upload), :notice => 'Upload was successfully created.') }
        format.xml  { render :xml => @upload, :status => :created, :location => @upload }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Uploads/1
  # PUT /Uploads/1.xml
  def update
    @project = Project.find(params[:project_id])
    @upload = @project.uploads.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to(project_upload_path(@project, @upload), :notice => 'Upload was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Uploads/1
  # DELETE /Uploads/1.xml
  def destroy
    @project = Project.find(params[:project_id])
    @upload = @project.uploads.find(params[:id])
    @upload.destroy

    respond_to do |format|
      format.html { redirect_to(uploads_url) }
      format.xml  { head :ok }
    end
  end
end
