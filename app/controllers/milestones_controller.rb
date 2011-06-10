class MilestonesController < ApplicationController
  # GET /milestones
  # GET /milestones.xml
  def index
    @project = Project.find(params[:project_id])
    @milestones = @project.milestones.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @milestones }
    end
  end

  # GET /milestones/1
  # GET /milestones/1.xml
  def show
    @project = Project.find(params[:project_id])
    @milestone = @project.milestones.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @milestone }
    end
  end

  # GET /milestones/new
  # GET /milestones/new.xml
  def new
    @project = Project.find(params[:project_id])
    @milestone = @project.milestones.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @milestone }
    end
  end

  # GET /milestones/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @milestone = @project.milestones.find(params[:id])
  end

  # POST /milestones
  # POST /milestones.xml
  def create
    @project = Project.find(params[:project_id])
    @milestone = @project.milestones.new(params[:milestone])

    respond_to do |format|
      if @milestone.save
        format.html { redirect_to(project_milestone_path(@project, @milestone), :notice => 'Milestone was successfully created.') }
        format.xml  { render :xml => @milestone, :status => :created, :location => @milestone }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @milestone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /milestones/1
  # PUT /milestones/1.xml
  def update
    @project = Project.find(params[:project_id])
    @milestone = @project.milestones.find(params[:id])

    respond_to do |format|
      if @milestone.update_attributes(params[:milestone])
        format.html { redirect_to(@milestone, :notice => 'Milestone was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @milestone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /milestones/1
  # DELETE /milestones/1.xml
  def destroy
    @project = Project.find(params[:project_id])
    @milestone = @project.milestones.find(params[:id])
    @milestone.destroy

    respond_to do |format|
      format.html { redirect_to(project_milestones_url) }
      format.xml  { head :ok }
    end
  end
end
